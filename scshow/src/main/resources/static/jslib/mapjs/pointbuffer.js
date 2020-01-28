require([
    'esri/map',
    'esri/graphic',
    'esri/layers/FeatureLayer',
    'esri/toolbars/draw',
    'esri/tasks/GeometryService',
    'esri/tasks/BufferParameters',
    'esri/tasks/QueryTask',
    'esri/tasks/query',
    'esri/symbol',
    'dojo/dom',
    'dojo/on',
    'dojo/_base/Color',
    'dojo/_base/array',
    'dojo/domReady!'
], function (
    Map, Graphic, FeatureLayer,
    Draw, GeometryService,
    BufferParameters, QueryTask, Query,
    symbol, dom, on, Color,
    arrayUtils
) {
    var map, geometryService, featureLayer, drawTool;
    map = new Map('map', {
        basemap: 'streets',
        center: [-122.4348, 37.7582],
        logo : false,
        slider : false,
        zoom : 12
    });

    var queryTask = new QueryTask("http://localhost:6080/arcgis/rest/services/Test/FSPart/MapServer/0");
    var geometryService = new GeometryService('http://localhost:6080/arcgis/rest/services/Utilities/Geometry/GeometryServer');
    var featureLayer = new FeatureLayer('http://localhost:6080/arcgis/rest/services/Test/FSPart/MapServer/0', {
        mode: FeatureLayer.MODE_SELECTION,
        outFields: ["*"]
    });

    map.addLayer(featureLayer);

    map.on('load', function() {
        drawTool = new Draw(map);
        on(drawTool, 'draw-end', function(evt) {
            map.graphics.clear();
            var geometry, ptSymbol, params, fill;
            drawTool.deactivate();
            geometry = evt.geometry;
            ptSymbol = new symbol.SimpleMarkerSymbol(symbol.SimpleMarkerSymbol.STYLE_CIRCLE,
                10,
                null,
                new Color([255,0,0,1]));
            params = new BufferParameters();

            map.graphics.add(new Graphic(geometry, ptSymbol));

            params.geometries = [geometry];
            params.distances = [1];
            params.unit = GeometryService.UNIT_KILOMETER;
            params.outSpatialReference = map.spatialReference;
            geometryService.buffer(params, function(geometries) {
                console.log('buffered', geometries);
                fill = new symbol.SimpleFillSymbol(
                    symbol.SimpleFillSymbol.STYLE_SOLID,
                    new symbol.SimpleLineSymbol(
                        symbol.SimpleLineSymbol.STYLE_SOLID,
                        new Color([255,0,0,0.65]), 3),
                    new Color([255,0,0,0.35]));

                arrayUtils.forEach(geometries, function(geom) {
                    map.graphics.add(new Graphic(geom, fill));
                    var query = new Query();
                    query.returnGeometry = true;
                    query.outFields = ["id", "userid", "latitude", "longtitude", "grid"];
                    query.geometry = geom;
                    featureLayer.selectFeatures(query);

                    //initialize query task
                    queryTask.execute(query,showResults);

                    function showResults(results) {
                        console.log('results', results.features.length);
                        var result, attribs;
                        var s = ["<table border=\"1\"><thead><tr style=\"background-color:#ccc;\"><td>userid</td><td>latitude</td><td>longtitude</td><td>grid</td></tr></thead><tbody id=\"states\">"];

                        dojo.forEach(results.features,function(result){
                            attribs = result.attributes;
                            s.push("<tr><td>" + attribs.userid + "</td><td>" + attribs.latitude + "</td><td>" + attribs.longtitude + "</td><td>" + attribs.grid + "</td></tr>");
                        });
                        s.push("</tbody></table>");
                        dojo.byId("tbl").innerHTML = s.join("");
                    }
                });
            });
        });
    });

    on(dom.byId('drawPoint'), 'click', function() {
        console.log('draw');
        drawTool.activate(Draw.POINT);
    });
});
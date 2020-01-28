var map;

require(
    [ "esri/map", "esri/layers/ArcGISDynamicMapServiceLayer",
        "esri/layers/ArcGISTiledMapServiceLayer",

        /*Scalebar*/
        "esri/dijit/Scalebar", "dojo/parser",

        /*Search*/
        "esri/dijit/Search",

        /*OverviewMap*/
        "esri/dijit/OverviewMap",

        "dojo/dom", "dojo/on",
        "esri/tasks/query", "esri/tasks/QueryTask",

        "esri/symbols/SimpleMarkerSymbol",
        "esri/InfoTemplate",
        "dojo/_base/Color",

        "dojo/domReady!" ],
    function(Map, ArcGISDynamicMapServiceLayer, ArcGISTiledMapServiceLayer,
             Scalebar, parser, Search, OverviewMap, dom, on, Query, QueryTask, SimpleMarkerSymbol, InfoTemplate, Color) {
        parser.parse();

        map = new Map("map", {
            logo : false,
            slider : true,
            zoom : 8
        });

        //var dynamicMapService = new ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/SCrowdsourcingMap/MapServer");


        var dynamicMapServiceLayer = new esri.layers.ArcGISDynamicMapServiceLayer(
            "http://localhost:6080/arcgis/rest/services/Test/FSPart/MapServer");

        map.addLayer(dynamicMapServiceLayer);


        var queryTask = new QueryTask("http://localhost:6080/arcgis/rest/services/Test/FSPart/MapServer/0");

        var query = new Query();
        query.returnGeometry = true;

        symbol = new SimpleMarkerSymbol();
        symbol.setStyle(SimpleMarkerSymbol.STYLE_CIRCLE);
        symbol.setSize(10);
        symbol.setColor(new Color([255,0,0,0.5]));

        query.outFields = [
            "id","userid", "latitude", "longtitude", "grid"
        ];

        infoTemplate = new InfoTemplate("${id}", "User ID : ${userid}<br/> State : ${latitude}, ${longtitude}<br />Grid : ${grid}");

        on(dom.byId("execute"), "click", execute);

        function execute () {
            query.where = "id =" + dom.byId("workerid").value;
            queryTask.execute(query, showResults);
        }

        function showResults (results) {
            map.graphics.clear();  // 不加此行，每次查询的结果在地图上不会消失
            var resultItems = [];
            var resultCount = results.features.length;
            for (var i = 0; i < resultCount; i++) {
                var graphic = results.features[i];
                graphic.setSymbol(symbol);
                graphic.setInfoTemplate(infoTemplate);
                map.graphics.add(graphic);
                var featureAttributes = results.features[i].attributes;
                for (var attr in featureAttributes) {
                    resultItems.push("<b>" + attr + ":</b>  " + featureAttributes[attr] + "<br>");
                }
                resultItems.push("<br>");
            }
            dom.byId("info").innerHTML = resultItems.join("");
        }

    });
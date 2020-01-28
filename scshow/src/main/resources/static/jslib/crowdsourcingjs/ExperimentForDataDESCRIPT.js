require([
    "esri/map",
    "esri/layers/ArcGISDynamicMapServiceLayer",
    "esri/tasks/QueryTask",
    "esri/tasks/query",
    "esri/symbols/SimpleMarkerSymbol",
    "esri/InfoTemplate",
    "dojo/_base/Color",
    "dojo/dom",
    "dojo/on",
    "dojo/domReady!"
], function(Map, ArcGISDynamicMapServiceLayer, QueryTask, Query, SimpleMarkerSymbol, InfoTemplate, Color, dom, on) {
    //create map and add layer
    map = new Map("mapDiv", {logo: false});
    var layer = new ArcGISDynamicMapServiceLayer(
        "http://localhost:6080/arcgis/rest/services/Test/FSpQ/MapServer");
    map.addLayer(layer);

    //initialize query task
    queryTask = new QueryTask("http://localhost:6080/arcgis/rest/services/Test/FSpQ/MapServer/0");

    //initialize query
    query = new Query();
    query.returnGeometry = true;
    query.outFields = ["id", "userid", "latitude", "longtitude", "grid"];

    //initialize InfoTemplate
    infoTemplate = new InfoTemplate("${id}", "User ID : ${userid}<br/> State : ${latitude}, ${longtitude}<br />Grid : ${grid}");

    //create symbol for selected features
    symbol = new SimpleMarkerSymbol();
    symbol.setStyle(SimpleMarkerSymbol.STYLE_CIRCLE);
    symbol.setSize(10);
    symbol.setColor(new Color([255,0,0,0.5]));

    //write "Query Information" button's click event
    on(dom.byId("QueryBTN"), "click", executeQueryTask);

    function executeQueryTask() {
        //set query based on what user typed in for population;
        query.where = "grid=" + dom.byId("inputdata").value;
        //execute query
        queryTask.execute(query,showResults);
    }

    function showResults(featureSet) {
        //remove all graphics on the maps graphics layer
        map.graphics.clear();
        //Performance enhancer - assign featureSet array to a single variable.
        var resultFeatures = featureSet.features;

        //Loop through each feature returned
        for (var i=0, il=resultFeatures.length; i<il; i++) {
            //Get the current feature from the featureSet.
            //Feature is a graphic
            var graphic = resultFeatures[i];
            graphic.setSymbol(symbol);

            //Set the infoTemplate.
            graphic.setInfoTemplate(infoTemplate);
            //Add graphic to the map graphics layer.
            map.graphics.add(graphic);
        }


        var result, attribs;
        var s = ["<table border=\"1\" width=\"400\"><thead><tr style=\"background-color:#ccc;\"><td>id</td><td>userid</td><td>latitude</td><td>longtitude</td><td>grid</td></tr></thead><tbody id=\"states\">"];

        dojo.forEach(resultFeatures,function(result){
            attribs = result.attributes;
            s.push("<tr><td>" + attribs.id + "</td><td>"+ attribs.userid + "</td><td>" + attribs.latitude + "</td><td>" + attribs.longtitude + "</td><td>" + attribs.grid + "</td></tr>");
        });
        s.push("</tbody></table>");
        dojo.byId("tbl").innerHTML = s.join("");
    }
});
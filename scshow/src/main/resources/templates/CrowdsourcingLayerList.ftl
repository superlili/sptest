<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no"/>

    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="initial-scale=1, maximum-scale=1,user-scalable=no">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Layer List</title>
    <link rel="stylesheet" href="https://js.arcgis.com/3.24/esri/css/esri.css">
    <style>
        html, body, .container, #map {
            height:100%;
            width:100%;
            margin:0;
            padding:0;
            margin:0;
            font-family: "Open Sans";
        }
        #map {
            padding:0;
        }
        #layerListPane{
            width:25%;
        }
        <!--.esriLayer{
                background-color: #fff;
            }
        .esriLayerList .esriList{
            border-top:none;
        }
        .esriLayerList .esriTitle {
            background-color: #fff;
            border-bottom:none;
        }
        .esriLayerList .esriList ul{
            background-color: #fff;
        }-->
    </style>
    <link rel="stylesheet" href="https://js.arcgis.com/3.26/dijit/themes/claro/claro.css">
    <script src="https://js.arcgis.com/3.26/"></script>
    <script>
        var map;
        var crowdsourcings;

        require([
            "esri/map",
            "esri/layers/ArcGISDynamicMapServiceLayer",
            "esri/dijit/LayerList",
            "dojo/parser",
            "dojo/domReady!"], function(Map, ArcGISDynamicMapServiceLayer, LayerList, parser) {
            parser.parse();

            map = new Map("map");

            // var crowdsourcings = new ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/Spatial_Crwodsourcing/MapServer");
            var crowdsourcings = new ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/Test/FSpQ/MapServer");

            map.addLayer(crowdsourcings);

            var layerList = new LayerList({
                map: map,
                layers: [{
                    layer: crowdsourcings,
                    id: "Crowdsourcings",
                    showSubLayers: true
                }],
                showOpacitySlider: true
            },"layerList");
            layerList.startup();
        });

    </script>
</head>

<body class="claro">
<div class="container" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="design:'headline',gutters:false">
    <div id="layerListPane" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'right'">
        <div id="layerList"></div>
    </div>
    <div id="map" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'center'"></div>
</div>
</body>
</html>
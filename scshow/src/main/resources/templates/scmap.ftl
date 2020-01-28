<!DOCTYPE html>
<html>
<head>
	<title>SCROWING MAP</title>

	<meta name="keywords" content="keyword1,keyword2,keyword3">
	<meta name="description" content="this is my page">
	<meta name="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport"
		  content="initial-scale=1, maximum-scale=1,user-scalable=no">
	<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="stylesheet"
		  href="https://js.arcgis.com/3.26/esri/themes/calcite/dijit/calcite.css">
	<link rel="stylesheet"
		  href="https://js.arcgis.com/3.26/esri/themes/calcite/esri/esri.css">


	<style>
		html, body {
			height: 100%;
			width: 100%;
			margin: 0;
			padding: 0;
		}

		#map {
			height: 100%;
			width: 100%;
			margin: 0;
			padding: 0;
		}

		#search {
			display: block;
			position: absolute;
			z-index: 2;
			top: 20px;
			left: 74px;
		}

	</style>


	<script src="https://js.arcgis.com/3.26/"></script>
	<script>
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

                "dojo/domReady!" ],


            function(Map, ArcGISDynamicMapServiceLayer, ArcGISTiledMapServiceLayer, Scalebar, parser, Search, OverviewMap) {

                parser.parse();
                map = new Map("map", {
                    logo : false,
                    slider : true,
                    zoom : 8
                });

                //var dynamicMapService = new ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/SCrowdsourcingMap/MapServer");

                var dynamicMapServiceLayer = new esri.layers.ArcGISDynamicMapServiceLayer(
                    "http://localhost:6080/arcgis/rest/services/Test/FSPart/MapServer", 0);

                map.addLayer(dynamicMapServiceLayer);

                var search = new Search({
                    map: map
                }, "search");

                search.startup();
            });
	</script>
</head>

<body class="calcite">
<div data-dojo-type="dijit/layout/BorderContainer"
	 data-dojo-props="design:'headline', gutters:false"
	 style="width: 100%; height: 100%; margin: 0;">

	<div id="map" data-dojo-type="dijit/layout/ContentPane"
		 data-dojo-props="region:'center'" style="overflow: hidden;"></div>

	<div id="search"></div>

	<div id="map">

	</div>

</div>
</body>
</html>

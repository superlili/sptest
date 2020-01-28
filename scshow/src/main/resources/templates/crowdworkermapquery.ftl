<!DOCTYPE html>
<html>
<head>
	<title>SCROWING MAP</title>

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


		h3 { margin: 0 0 5px 0; border-bottom: 1px solid #444; }
		.shadow {
			-moz-box-shadow: 0 0 5px #888;
			-webkit-box-shadow: 0 0 5px #888;
			box-shadow: 0 0 5px #888;
		}

		#feedback {
			background: #fff;
			bottom: 0px;
			color: #444;
			position: absolute;
			font-family: arial;
			height: 200px;
			left: 0px;
			margin: 0px;
			padding: 0px;
			width: 100%;
			z-index: 40;
		}
		#note { font-size: 100%; font-weight: 700; padding: 0 0 10px 0; }

	</style>


	<script src="https://js.arcgis.com/3.26/"></script>
	<script src="../static/jslib/crowdsourcingjs/crowdworkermapquery.js"></script>
</head>

<body class="calcite">
<div data-dojo-type="dijit/layout/BorderContainer"
	 data-dojo-props="design:'headline', gutters:false"
	 style="width: 100%; height: 100%; margin: 0;">

	<div id="map">
		<div id="feedback" class="shadow">
			<h3>Crowd WORKER QUERY FOR SPATIAL CROWDSOURCING</h3>
			Crowd Worker :
			<input type="text" id="workerid" value="1">
			<input id="execute" type="button" value="Crowd-Worker Query">
			<div id="Content">
				<div id="note">
					<div id="info" style="margin:5px; background-color:#eee;">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

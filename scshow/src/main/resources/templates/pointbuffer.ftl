<!doctype html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
    <title>Spatial Crowdsourcing Web Development</title>
	<link rel="stylesheet" href="http://js.arcgis.com/3.26/dijit/themes/claro/claro.css"> 
    <link rel="stylesheet" href="http://js.arcgis.com/3.26/esri/css/esri.css"> 
	<link rel="stylesheet" href='http://js.arcgis.com/3.26/esri/dijit/css/Popup.css'/>
	<style>
	  html, body, #map{
		height: 100%;
		margin: 0;
		padding: 0;
	  }
		  
	  #info {
		top: 20px;
		color: #456;
		height: auto;
		font-family: arial;
		right: 20px;
		margin: 5px;
		padding: 10px;
		position: absolute;
		width: 25%;
		z-index: 40;
		border: solid 0.5px #666;
		border-radius: 2px;
		background-color: #fff;
	  }
	</style>
  </head>
  <body class="claro">
  	<div id="info">
	  <span>Spatial Buffer for Search Crowd-Worker</span>
	  <button id="drawPoint">Buffer Query</button>
	  <hr/>
	  <div id="tbl"></div>
    </div>
    <div id="map"></div>
    <script type="text/javascript" src="http://js.arcgis.com/3.26/"></script>
    <script src="../static/jslib/mapjs/pointbuffer.js"></script>
  </body>
</html>

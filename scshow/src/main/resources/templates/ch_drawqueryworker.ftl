<!doctype html>
<html>
  <head>
    <title>ArcGIS Web Development</title>
    <link rel="stylesheet"
      href="http://js.arcgis.com/3.26/esri/css/esri.css">
    <style type="text/css">
      #drawPolygon {
        float: right;
      }
      #map {
        position: absolute;
        top: 35px;
        right: 0;
        left: 0;
        bottom: 0;
      }
    </style>
  </head>
  <body>
    <input name="" type="button" id="drawPolygon" value="Draw" class="button" />
    <div id="map"></div>
    <script type="text/javascript"
      src="http://js.arcgis.com/3.26/"></script>
    <script type="text/javascript" src="../static/jslib/crowdsourcingjs/ch_drawqueryworker.js"></script>
  </body>
</html>

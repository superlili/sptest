<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no"/>
  <title>Query Task</title>
  <link rel="stylesheet" href="https://js.arcgis.com/3.26/esri/css/esri.css">
  <style>
    html, body, #mapDiv {
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
  <script src="https://js.arcgis.com/3.26/"></script>
  <script src="../static/jslib/crowdsourcingjs/queryworkerwithid.js"></script>
</head>
<body>
<div id="mapDiv"></div>
<div id="info">
  <Label>SEARCH INFO: </Label>
  <input id="inputdata" type="text" placeholder="Query Information" value="500000" />
  <button id="QueryBTN">DO Query</button>
</div>
</body>
</html>
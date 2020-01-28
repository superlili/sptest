require([
  'dojo/dom',
  'dojo/on',
  'esri/map',
  'esri/layers/FeatureLayer'
], function(dom, on, Map, FeatureLayer) {
  var map = new Map('map', {
    basemap: 'streets',
    autoResize: true,
    center: [-122.411479, 37.786210],
    zoom: 13
  });

  var featureLayer = new FeatureLayer('http://localhost:6080/arcgis/rest/services/TEST/CrowdDB/FeatureServer/0');

  featureLayer.setDefinitionExpression('grid = 1');

  map.addLayer(featureLayer);

  on(dom.byId('gridinfo'), 'change', function(e) {
    var gridinfo = e.target.value;
    var definitionExpression = 'grid = ' + gridinfo;
    featureLayer.setDefinitionExpression(definitionExpression);
  });

});


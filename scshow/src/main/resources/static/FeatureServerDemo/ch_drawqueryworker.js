require([
  'dojo/dom',
  'dojo/on',
  'esri/map',
  'esri/layers/FeatureLayer',
  'esri/toolbars/draw',
  'esri/tasks/query'
], function(dom, on, Map, FeatureLayer, Draw, Query) {
  var map = new Map('map', {
    basemap: 'streets',
    autoResize: true,
    center: [-122.411479, 37.786210],
    zoom: 13
  }),
  featureLayer = new FeatureLayer('http://localhost:6080/arcgis/rest/services/TEST/CrowdDB/FeatureServer/0', {
    mode: FeatureLayer.MODE_SELECTION
  }),
  drawToolbar = new Draw(map);

  on(drawToolbar, 'draw-end', function(evt){
    drawToolbar.deactivate();
    var query = new Query();
    query.geometry = evt.geometry;
    featureLayer.selectFeatures(query);
  });

  map.addLayer(featureLayer);

  on(dom.byId('drawPolygon'), 'click', function() {
    drawToolbar.activate(Draw.POLYGON);
  });

});


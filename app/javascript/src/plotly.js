import Plotly from 'plotly.js/dist/plotly'

window.onload = function() {
  var plot = document.getElementById('room-measurements');

  Plotly.newPlot( plot, [{
  x: [1, 2, 3, 4, 5],
  y: [1, 2, 4, 8, 16] }], {
  margin: { t: 0 } } );
}



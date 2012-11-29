import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var x = canvas.width / 2;
  var y = canvas.height / 2 - 10;
  var text = 'Hello World!';

  context.font = '30pt Calibri';
  context.textAlign = 'center';
  context.fillStyle = 'blue';
  context.fillText(text, x, y);

  // get text metrics
  var metrics = context.measureText(text);
  var width = metrics.width;
  context.font = '20pt Calibri';
  context.textAlign = 'center';
  context.fillStyle = '#555';
  context.fillText('(${width}px wide)', x, y + 40);
  
  document.body.children.add(canvas);  
}
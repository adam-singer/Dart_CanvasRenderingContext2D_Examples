import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var x = 80;
  var y = 110;

  context.font = '60pt Calibri';
  context.lineWidth = 3;
  // stroke color
  context.strokeStyle = 'blue';
  context.strokeText('Hello World!', x, y);
  
  document.body.children.add(canvas);  
}
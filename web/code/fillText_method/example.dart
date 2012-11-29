import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context.font = 'italic 40pt Calibri';
  context.fillText('Hello World!', 150, 100);
  
  document.body.children.add(canvas);
}
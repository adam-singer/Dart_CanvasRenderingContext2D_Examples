import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var rectWidth = 150;
  var rectHeight = 75;

  // translate context to center of canvas
  context.translate(canvas.width ~/ 2, canvas.height ~/ 2);

  // scale y component
  context.scale(1, 0.5);

  context.fillStyle = 'blue';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);
  
  document.body.children.add(canvas);
}
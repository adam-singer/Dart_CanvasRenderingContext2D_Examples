import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  
  context.beginPath();
  context.moveTo(100, 20);
  // bezier curve
  context.bezierCurveTo(290, -40, 300, 200, 400, 150);
  context.lineWidth = 5;
  context.strokeStyle = 'blue';
  context.stroke();
  
  document.body.children.add(canvas);
}
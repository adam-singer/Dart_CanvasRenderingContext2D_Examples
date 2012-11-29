import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  
  context.beginPath();
  context.moveTo(100, 20);
  // line 1
  context.lineTo(200, 160);
  context.lineWidth = 5;
  context.strokeStyle = 'blue';
  context.stroke();
  
  document.body.children.add(canvas);
}
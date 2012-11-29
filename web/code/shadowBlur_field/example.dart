import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context.rect(188, 40, 200, 100);
  context.fillStyle = 'red';
  context.shadowColor = '#999';
  context.shadowBlur = 20;
  context.shadowOffsetX = 15;
  context.shadowOffsetY = 15;
  context.fill();
  
  document.body.children.add(canvas);  
}
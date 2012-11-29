import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  // draw blue rectangle
  context.beginPath();
  context.rect(200, 20, 100, 100);
  context.fillStyle = 'blue';
  context.fill();

  // draw transparent red circle
  context.globalAlpha = 0.5;
  context.beginPath();
  context.arc(320, 120, 60, 0, 2 * PI, false);
  context.fillStyle = 'red';
  context.fill();
  
  document.body.children.add(canvas);  
}
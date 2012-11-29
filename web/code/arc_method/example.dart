import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  
  var x = canvas.width ~/ 2;
  var y = canvas.height ~/ 2;
  var radius = 75;
  var startAngle = 1.1 * PI;
  var endAngle = 1.9 * PI;
  var counterClockwise = false;
  
  context.beginPath();
  context.arc(x, y, radius, startAngle, endAngle, counterClockwise);
  context.lineWidth = 15;
  
  // line color
  context.strokeStyle = 'black';
  context.stroke();
  
  document.body.children.add(canvas);
}
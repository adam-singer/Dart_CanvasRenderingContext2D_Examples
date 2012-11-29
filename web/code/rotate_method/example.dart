import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;

  var rectWidth = 150;
  var rectHeight = 75;

  // translate context to center of canvas
  context.translate(canvas.width / 2, canvas.height / 2);

  // rotate 45 degrees clockwise
  context.rotate(PI / 4);

  context.fillStyle = 'blue';
  context.fillRect(rectWidth / -2, rectHeight / -2, rectWidth, rectHeight);
  
  document.body.children.add(canvas);  
}
import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  
  var rectWidth = 200;
  var rectHeight = 100;
  var rectX = 189;
  var rectY = 50;
  var cornerRadius = 50;

  context
  ..beginPath()
  ..moveTo(rectX, rectY)
  ..lineTo(rectX + rectWidth - cornerRadius, rectY)
  ..arcTo(rectX + rectWidth, rectY, rectX + rectWidth, rectY + cornerRadius, cornerRadius)
  ..lineTo(rectX + rectWidth, rectY + rectHeight)
  ..lineWidth = 5
  ..stroke();
  
  document.body.children.add(canvas);
}
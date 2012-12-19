import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;

  // BEGIN(shadowBlur_example)
  canvas.context2d
  ..rect(188, 40, 200, 100)
  ..fillStyle = 'red'
  ..shadowColor = '#999'
  ..shadowBlur = 20
  ..shadowOffsetX = 15
  ..shadowOffsetY = 15
  ..fill();
  // END(shadowBlur_example)

  document.body.children.add(canvas);
}
import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  // BEGIN(lineWidth_example)
  canvas.context2d
  ..beginPath()
  ..moveTo(100, 150)
  ..lineTo(450, 50)
  ..lineWidth = 15
  ..stroke();
  // END(lineWidth_example)
  document.body.children.add(canvas);
}
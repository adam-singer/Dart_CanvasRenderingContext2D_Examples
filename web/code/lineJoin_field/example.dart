import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  // set line width for all lines
  context
  ..lineWidth = 25

  // miter line join (left)
  ..beginPath()
  ..moveTo(99, 150)
  ..lineTo(149, 50)
  ..lineTo(199, 150)
  ..lineJoin = 'miter'
  ..stroke()

  // round line join (middle)
  ..beginPath()
  ..moveTo(239, 150)
  ..lineTo(289, 50)
  ..lineTo(339, 150)
  ..lineJoin = 'round'
  ..stroke()

  // bevel line join (right)
  ..beginPath()
  ..moveTo(379, 150)
  ..lineTo(429, 50)
  ..lineTo(479, 150)
  ..lineJoin = 'bevel'
  ..stroke();
  
  document.body.children.add(canvas);
}
import 'dart:html';

void main() {
  // BEGIN(fillStyle_example)
  var canvas = new CanvasElement(width: 600, height: 400);
  canvas.context2d
  ..font = '40pt Calibri'
  ..fillStyle = 'blue'
  ..fillText('Hello World!', 150, 100);
  // END(fillStyle_example)
  document.body.children.add(canvas);
}
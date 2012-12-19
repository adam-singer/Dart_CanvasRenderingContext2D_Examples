import 'dart:html';

void main() {
  // BEGIN(font_example)
  var canvas = new CanvasElement(width: 600, height: 400);
  canvas.context2d
  ..font = 'italic 40pt Monaco'
  ..fillText('Hello World!', 150, 100);
  // END(font_example)
  document.body.children.add(canvas);
}
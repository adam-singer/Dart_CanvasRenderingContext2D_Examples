import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  // BEGIN(globalAlpha_example)
  canvas.context2d
  // draw blue rectangle
  ..beginPath()
  ..rect(200, 20, 100, 100)
  ..fillStyle = 'blue'
  ..fill()

  // draw transparent red circle
  ..globalAlpha = 0.5
  ..beginPath()
  ..arc(320, 120, 60, 0, 2 * PI, false)
  ..fillStyle = 'red'
  ..fill();
// END(globalAlpha_example)
  document.body.children.add(canvas);
}
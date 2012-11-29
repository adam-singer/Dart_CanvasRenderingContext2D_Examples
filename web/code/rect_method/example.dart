import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context
  ..beginPath()
  ..rect(188, 50, 200, 100)
  ..fillStyle = 'yellow'
  ..fill()
  ..lineWidth = 7
  ..strokeStyle = 'black'
  ..stroke();
  
  document.body.children.add(canvas);
}
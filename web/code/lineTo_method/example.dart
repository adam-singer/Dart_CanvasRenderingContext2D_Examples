import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 400, height: 400);
  var context = canvas.context2d;
  
  context
  ..beginPath()
  ..moveTo(100, 150)
  ..lineTo(450, 50)
  ..stroke();
  
  document.body.children.add(canvas);
}
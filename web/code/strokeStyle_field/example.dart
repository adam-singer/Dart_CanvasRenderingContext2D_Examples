import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context
  ..beginPath()
  ..moveTo(100, 150)
  ..lineTo(450, 50)
  ..lineWidth = 10

  // set line color
  ..strokeStyle = '#ff00f0'
  ..stroke();
  
  document.body.children.add(canvas);
}
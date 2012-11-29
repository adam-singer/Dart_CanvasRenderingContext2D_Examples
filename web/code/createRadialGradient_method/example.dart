import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context.rect(0, 0, canvas.width, canvas.height);
  
  // create radial gradient
  var grd = context.createRadialGradient(238, 50, 10, 238, 50, 300);
  
  grd
  // light blue
  ..addColorStop(0, '#8ED6FF')
  // dark blue
  ..addColorStop(1, '#004CB3');

  context
  ..fillStyle = grd
  ..fill();
  
  document.body.children.add(canvas);
}
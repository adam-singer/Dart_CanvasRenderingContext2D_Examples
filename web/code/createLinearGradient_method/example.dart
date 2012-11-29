import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  context.rect(0, 0, canvas.width, canvas.height);

  // add linear gradient
  var grd = context.createLinearGradient(0, 0, canvas.width, canvas.height);
  // light blue
  grd.addColorStop(0, '#8ED6FF');   
  // dark blue
  grd.addColorStop(1, '#004CB3');
  context.fillStyle = grd;
  context.fill();
  
  document.body.children.add(canvas); 
}
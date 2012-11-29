import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;  
  
  var x = canvas.width / 2;
  var y = canvas.height / 2;

  context.font = '30pt Calibri';
  // textAlign aligns text horizontally relative to placement
  context.textAlign = 'center';
  // textBaseline aligns text vertically relative to font style
  context.textBaseline = 'middle';
  context.fillStyle = 'blue';
  context.fillText('Hello World!', x, y);
  
  document.body.children.add(canvas); 
}
import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var rectWidth = 150;
  var rectHeight = 75;

  // translation matrix:
  //  1  0  tx
  //  0  1  ty
  //  0  0  1
  var tx = canvas.width ~/ 2;
  var ty = canvas.height ~/ 2;

  // apply custom transform
  context.transform(1, 0, 0, 1, tx, ty);

  context.fillStyle = 'blue';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);
  
  document.body.children.add(canvas);  
}
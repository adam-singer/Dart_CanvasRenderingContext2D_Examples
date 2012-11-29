import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var rectWidth = 150;
  var rectHeight = 75;

  context.save();
  // save state 1
  context.translate(canvas.width ~/ 2, canvas.height ~/ 2);

  context.save();
  // save state 2
  context.rotate(PI / 4);

  context.save();
  // save state 3
  context.scale(2, 2);

  context.fillStyle = 'blue';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);

  context.restore();
  // restore state 3
  context.fillStyle = 'red';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);

  context.restore();
  // restore state 2
  context.fillStyle = 'yellow';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);

  context.restore();
  // restore state 1
  context.fillStyle = 'green';
  context.fillRect(rectWidth ~/ -2, rectHeight ~/ -2, rectWidth, rectHeight);
  
  document.body.children.add(canvas);  
}
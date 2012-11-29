import 'dart:html';
import 'dart:math';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var x = canvas.width ~/ 2;
  var y = canvas.height ~/ 2;
  var radius = 75;
  var offset = 50;

  /*
   * save() allows us to save the canvas context before
   * defining the clipping region so that we can return
   * to the default state later on
   */
  context.save();
  context.beginPath();
  context.arc(x, y, radius, 0, 2 * PI, false);
  context.clip();

  // draw blue circle inside clipping region
  context.beginPath();
  context.arc(x - offset, y - offset, radius, 0, 2 * PI, false);
  context.fillStyle = 'blue';
  context.fill();

  // draw yellow circle inside clipping region
  context.beginPath();
  context.arc(x + offset, y, radius, 0, 2 * PI, false);
  context.fillStyle = 'yellow';
  context.fill();

  // draw red circle inside clipping region
  context.beginPath();
  context.arc(x, y + offset, radius, 0, 2 * PI, false);
  context.fillStyle = 'red';
  context.fill();

  /*
   * restore() restores the canvas context to its original state
   * before we defined the clipping region
   */
  context.restore();
  context.beginPath();
  context.arc(x, y, radius, 0, 2 * PI, false);
  context.lineWidth = 10;
  context.strokeStyle = 'blue';
  context.stroke();
  
  document.body.children.add(canvas);  
}
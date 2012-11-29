import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  // butt line cap (top line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2 - 50);
  context.lineTo(canvas.width - 200, canvas.height / 2 - 50);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'butt';
  context.stroke();

  // round line cap (middle line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2);
  context.lineTo(canvas.width - 200, canvas.height / 2);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'round';
  context.stroke();

  // square line cap (bottom line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2 + 50);
  context.lineTo(canvas.width - 200, canvas.height / 2 + 50);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'square';
  context.stroke();
  
  document.body.children.add(canvas);
}
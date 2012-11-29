import 'dart:html';
import 'dart:math';
// TODO: does not work.

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  document.body.children.add(canvas);
  
  var tempCanvas = new CanvasElement(width: 600, height: 400);
  var tempContext = canvas.context2d;
  tempCanvas.style.display = "none";
  document.body.children.add(tempCanvas);
  
  var squareWidth = 55;
  var circleRadius = 35;
  var shapeOffset = 50;
  var operationOffset = 150;
  var arr = [];

  arr.add('source-atop');
//  arr.add('source-in');
//  arr.add('source-out');
//  arr.add('source-over');
//  arr.add('destination-atop');
//  arr.add('destination-in');
//  arr.add('destination-out');
//  arr.add('destination-over');
//  arr.add('lighter');
//  arr.add('darker');
//  arr.add('xor');
//  arr.add('copy');

  // translate context to add 10px padding
  context.translate(10, 10);

  // draw each of the operations
  for(var n = 0; n < arr.length; n++) {
    var thisOperation = arr[n];

    tempContext.save();
    
    // clear temp context
    tempContext.clearRect(0, 0, canvas.width, canvas.height);

    // draw rectangle (destination)
    tempContext.beginPath();
    tempContext.rect(0, 0, squareWidth, squareWidth);
    tempContext.fillStyle = 'yellow';
    tempContext.fill();

    // set global composite
    tempContext.globalCompositeOperation = thisOperation;

    // draw circle (source)
    tempContext.beginPath();
    tempContext.arc(shapeOffset, shapeOffset, circleRadius, 0, 2 * PI, false);
    tempContext.fillStyle = 'red';
    tempContext.fill();
    tempContext.restore();

    tempContext.save();
    // draw text
    tempContext.font = '10pt Verdana';
    tempContext.fillStyle = 'black';
    tempContext.fillText(thisOperation, 0, squareWidth + 45);
    tempContext.restore();
    
    // translate visible context so operation is drawn in the right place
//    if(n > 0) {
//      if(n % 4 == 0) {
//        context.translate(operationOffset * -3, operationOffset);
//      }
//      else {
//        context.translate(operationOffset, 0);
//      }
//    }
    
    //context.translate(operationOffset, 0);

    // copy drawing from tempCanvas onto visible canvas
    context.drawImage(tempCanvas, 0, 0);
  }
  
  
}
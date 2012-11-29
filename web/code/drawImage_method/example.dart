import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var x = 188;
  var y = 30;
  var width = 200;
  var height = 137;
  var image = new ImageElement();

  image.on.load.add((e) {
    context.drawImage(image, x, y, width, height);
  });
  image.src = 'http://www.html5canvastutorials.com/demos/assets/darth-vader.jpg';
  
  document.body.children.add(canvas);
}
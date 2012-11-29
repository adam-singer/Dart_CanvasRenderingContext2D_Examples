import 'dart:html';

void main() {
  var canvas = new CanvasElement(width: 600, height: 400);
  var context = canvas.context2d;
  
  var image = new ImageElement();
  image.on.load.add((e) {
    var pattern = context.createPattern(image, 'repeat');

    context.rect(0, 0, canvas.width, canvas.height);
    context.fillStyle = pattern;
    context.fill();
  });
  image.src = 'http://www.html5canvastutorials.com/demos/assets/wood-pattern.png';
  
  document.body.children.add(canvas);
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library api;

/**
 * The 2D rendering context for the drawing surface of a CanvasElement. 
 * 
 * To get this object. call [getContext()] on [CanvasElement] with the 
 * argument '2d'. Alternatively, the getter on [CanvasElement] [context2d]
 * provides the same call as a getter.
 * 
 * Example:
 * 
 *     var canvas = new CanvasElement(width: 600, height: 600);
 *     var ctx = canvas.context2d;
 *     document.body.children.add(canvas);
 * 
 * See also:
 * * [CanvasRenderingContext2D](https://developer.mozilla.org/en-US/docs/DOM/CanvasRenderingContext2D) from MDN
 * * [CanvasRenderingContext2D](http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#canvasrenderingcontext2d) from whatwg
 */
class CanvasRenderingContext2D { // extends CanvasRenderingContext native "*CanvasRenderingContext2D" {

  /** 
   * Color or style to use inside shapes. Default #000 (black). 
   * [fillStyle] can be set from [CanvasGradient], [CanvasPattern]
   * or [String] [CSS color](http://www.w3.org/TR/CSS21/syndata.html#color-units).
   */
  /// @domName CanvasRenderingContext2D.fillStyle; @docsEditable true
  dynamic fillStyle;

  /** Default value 10px sans-serif. */
  /// @domName CanvasRenderingContext2D.font; @docsEditable true
  String font;

  /** 
   * Alpha value that is applied to shapes and images before they are 
   * composited onto the canvas. Default 1.0 (opaque). 
   */
  /// @domName CanvasRenderingContext2D.globalAlpha; @docsEditable true
  num globalAlpha;

  /**
   * With globalAplpha applied this sets how shapes and images are drawn onto 
   * the existing bitmap. 
   * 
   * Possible values:
   * 
   * * source-atop
   * * source-in
   * * source-out
   * * source-over (default)
   * * destination-atop
   * * destination-in
   * * destination-out
   * * destination-over
   * * lighter
   * * xor 
   * 
   * 
   */
  /// @domName CanvasRenderingContext2D.globalCompositeOperation; @docsEditable true
  String globalCompositeOperation;

  /**
   * Type of endings on the end of lines. 
   * 
   * Possible values: butt (default), round, square
   */
  /// @domName CanvasRenderingContext2D.lineCap; @docsEditable true
  String lineCap;

  /**
   * Specifies where to start a dasharray on a line.
   * 
   * 
   */
  /// @domName CanvasRenderingContext2D.lineDashOffset; @docsEditable true
  num lineDashOffset;

  /**
   * Defines the type of corners where two lines meet. 
   * 
   * Possible values: round, bevel, miter (default)
   */
  /// @domName CanvasRenderingContext2D.lineJoin; @docsEditable true
  String lineJoin;

  /**
   * Width of lines. 
   * 
   * Default 1.0
   */
  /// @domName CanvasRenderingContext2D.lineWidth; @docsEditable true
  num lineWidth;

  /**
   * Default 10.
   */
  /// @domName CanvasRenderingContext2D.miterLimit; @docsEditable true
  num miterLimit;

  /**
   * Specifies the blurring effect. 
   * 
   * Default 0
   */
  /// @domName CanvasRenderingContext2D.shadowBlur; @docsEditable true
  num shadowBlur;

  /**
   * Color of the shadow. Default fully-transparent black.
   */
  /// @domName CanvasRenderingContext2D.shadowColor; @docsEditable true
  String shadowColor;

  /**
   * Horizontal distance the shadow will be offset. 
   * 
   * Default 0.
   * 
   */
  /// @domName CanvasRenderingContext2D.shadowOffsetX; @docsEditable true
  num shadowOffsetX;

  /**
   * Vertical distance the shadow will be offset. Default 0.
   */
  /// @domName CanvasRenderingContext2D.shadowOffsetY; @docsEditable true
  num shadowOffsetY;

  /**
   * Color or style to use for the lines around shapes. 
   * 
   * Default #000 (black).
   */
  /// @domName CanvasRenderingContext2D.strokeStyle; @docsEditable true
  dynamic strokeStyle;

  /**
   * Possible values: start (default), end, left, right or center.
   */
  /// @domName CanvasRenderingContext2D.textAlign; @docsEditable true
  String textAlign;

  /**
   * Possible values: top, hanging, middle, alphabetic (default), ideographic, bottom
   */
  /// @domName CanvasRenderingContext2D.textBaseline; @docsEditable true
  String textBaseline;

  /// @domName CanvasRenderingContext2D.webkitBackingStorePixelRatio; @docsEditable true
  //final num webkitBackingStorePixelRatio;
  num webkitBackingStorePixelRatio;
  
  /**
   * Image smoothing mode; if disabled, images will not be smoothed if scaled.
   */
  /// @domName CanvasRenderingContext2D.webkitImageSmoothingEnabled; @docsEditable true
  bool webkitImageSmoothingEnabled;

  /**
   * An array which specifies the lengths of alternating dashes and gaps.
   */
  /// @domName CanvasRenderingContext2D.webkitLineDash; @docsEditable true
  List webkitLineDash;

  /**
   * Specifies where to start a dasharray on a line. 
   */
  /// @domName CanvasRenderingContext2D.webkitLineDashOffset; @docsEditable true
  num webkitLineDashOffset;

  /**
   * Adds an arc to the path.
   * 
   * Center is at (x, y) position with radius r starting at startAngle 
   * and ending at endAngle going in the given direction by anticlockwise 
   * (defaulting to clockwise).
   * 
   * x
   * The x axis of the coordinate for the arc's center.
   * 
   * y
   * The y axis of the coordinate for the arc's center.
   * 
   * radius
   * The arc's radius
   * 
   * startAngle
   * The starting point, measured from the x axis , from which it will be drawed expressed as radians.
   * 
   * endAngle
   * The end arc's angle to which it will be drawed expressed as radians.
   * 
   * anticlockwise 
   * When true draws the arc anticlockwise, otherwise in a clockwise direction.
   */
  /// @domName CanvasRenderingContext2D.arc; @docsEditable true
  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise); //native;

  /**
   * Adds an arc with the given control points and radius, connected to the 
   * previous point by a straight line.
   * 
   * 
   */
  /// @domName CanvasRenderingContext2D.arcTo; @docsEditable true
  void arcTo(num x1, num y1, num x2, num y2, num radius); // native;

  /**
   * Starts a new path by resetting the list of sub-paths. 
   * 
   * Call this method when you want to create a new path.
   */
  /// @domName CanvasRenderingContext2D.beginPath; @docsEditable true
  void beginPath(); // native;

  /**
   * 
   */
  /// @domName CanvasRenderingContext2D.bezierCurveTo; @docsEditable true
  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y); // native;

  /**
   * Clears the rectangle defined by it starting point at (x, y) and has a w width and a h height.
   * 
   * x
   * The x axis of the coordinate for the rectangle starting point.
   *
   * y
   * The y axis of the coordinate for the rectangle starting point.
   *
   * width
   * The rectangle's width.
   *
   * height
   * The rectangle's height.   
   */
  /// @domName CanvasRenderingContext2D.clearRect; @docsEditable true
  void clearRect(num x, num y, num width, num height); // native;
  
  /**
   *
   */
  /// @domName CanvasRenderingContext2D.clearShadow; @docsEditable true
  void clearShadow(); // native;

  /**
   * Creates a clipping path from the current sub-paths. 
   * 
   * Everything drawn after clip() is called appears inside the clipping path only. 
   */
  /// @domName CanvasRenderingContext2D.clip; @docsEditable true
  void clip(); // native;

  /** 
   * Tries to draw a straight line from the current point to the start. 
   *
   * If the shape has already been closed or has only one point, this function does nothing.
   */
  /// @domName CanvasRenderingContext2D.closePath; @docsEditable true
  void closePath(); // native;

  /**
   * Creates a new, blank ImageData object with the specified dimensions. 
   *
   * All of the pixels in the new object are transparent black.
   *
   * width
   * The width to give the new ImageData object.
   *
   * height
   * The height to give the new ImageData object.
   *
   * imagedata
   * An existing ImageData object from which to copy the width and height. The image itself is not copied.
   * 
   * Return value
   * A new ImageData object with the specified width and height. The new object is filled with transparent black pixels.
   */
  /// @domName CanvasRenderingContext2D.createImageData; @docsEditable true
  ImageData createImageData(imagedata_OR_sw, [num sh]) {
    if ((?imagedata_OR_sw && (imagedata_OR_sw is ImageData || imagedata_OR_sw == null)) &&
        !?sh) {
      var imagedata_1 = _convertDartToNative_ImageData(imagedata_OR_sw);
      return _convertNativeToDart_ImageData(_createImageData_1(imagedata_1));
    }
    if ((?imagedata_OR_sw && (imagedata_OR_sw is num || imagedata_OR_sw == null))) {
      return _convertNativeToDart_ImageData(_createImageData_2(imagedata_OR_sw, sh));
    }
    throw new ArgumentError("Incorrect number or type of arguments");
  }
  @Creates('ImageData|=Object')
  _createImageData_1(imagedata); // native "createImageData";
  @Creates('ImageData|=Object')
  _createImageData_2(num sw, sh); // native "createImageData";

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.createLinearGradient; @docsEditable true
  CanvasGradient createLinearGradient(num x0, num y0, num x1, num y1); // native;

  /**
   * 
   * 
   * image
   * A DOM element to use as the source image for the pattern. This can be any element, although typically you'll use an Image or <canvas>.
   * repetition
   * ?
   * Return value
   * 
   * A new DOM canvas pattern object for use in pattern-based operations.
   */
  /// @domName CanvasRenderingContext2D.createPattern; @docsEditable true
  CanvasPattern createPattern(canvas_OR_image, String repetitionType); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.createRadialGradient; @docsEditable true
  CanvasGradient createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1); // native;

  /**
   * Draws the specified image. 
   * 
   * This method is available in multiple formats, providing a great deal of flexibility in its use.
   * 
   * image
   * An element to draw into the context; the specification permits any image element (that is, <img>, <canvas>, and <video>). Some browsers, including Firefox, let you use any arbitrary element.
   *
   * dx
   * The X coordinate in the destination canvas at which to place the top-left corner of the source image.
   *
   * dy
   * The Y coordinate in the destination canvas at which to place the top-left corner of the source image.
   *
   * dw
   * The width to draw the image in the destination canvas. This allows scaling of the drawn image. If not specified, the image is not scaled in width when drawn.
   *
   * dh
   * The height to draw the image in the destination canvas. This allows scaling of the drawn image. If not specified, the image is not scaled in height when drawn.
   *
   * sx
   * The X coordinate of the top left corner of the sub-rectangle of the source image to draw into the destination context.
   *
   * sy
   * The Y coordinate of the top left corner of the sub-rectangle of the source image to draw into the destination context.
   *
   * sw
   *
   * The width of the sub-rectangle of the source image to draw into the destination context. If not specified, the entire rectangle from the coordinates specified by sx and sy to the bottom-right corner of the image is used. If you specify a negative value, the image is flipped horizontally when drawn.
   *
   * sh
   * The height of the sub-rectangle of the source image to draw into the destination context. If you specify a negative value, the image is flipped vertically when drawn.
   */
  /// @domName CanvasRenderingContext2D.drawImage; @docsEditable true
  void drawImage(canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width, num height_OR_sh, num dx, num dy, num dw, num dh]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.drawImageFromRect; @docsEditable true
  void drawImageFromRect(ImageElement image, [num sx, num sy, num sw, num sh, num dx, num dy, num dw, num dh, String compositeOperation]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.fill; @docsEditable true
  void fill(); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.fillRect; @docsEditable true
  void fillRect(num x, num y, num width, num height); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.fillText; @docsEditable true
  void fillText(String text, num x, num y, [num maxWidth]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.getImageData; @docsEditable true
  ImageData getImageData(num sx, num sy, num sw, num sh) {
    return _convertNativeToDart_ImageData(_getImageData_1(sx, sy, sw, sh));
  }
  @Creates('ImageData|=Object')
  _getImageData_1(sx, sy, sw, sh); // native "getImageData";

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.getLineDash; @docsEditable true
  List<num> getLineDash(); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.isPointInPath; @docsEditable true
  bool isPointInPath(num x, num y); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.lineTo; @docsEditable true
  void lineTo(num x, num y); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.measureText; @docsEditable true
  TextMetrics measureText(String text); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.moveTo; @docsEditable true
  void moveTo(num x, num y); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.putImageData; @docsEditable true
  void putImageData(ImageData imagedata, num dx, num dy, [num dirtyX, num dirtyY, num dirtyWidth, num dirtyHeight]) {
    if (!?dirtyX &&
        !?dirtyY &&
        !?dirtyWidth &&
        !?dirtyHeight) {
      var imagedata_1 = _convertDartToNative_ImageData(imagedata);
      _putImageData_1(imagedata_1, dx, dy);
      return;
    }
    var imagedata_2 = _convertDartToNative_ImageData(imagedata);
    _putImageData_2(imagedata_2, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
    return;
    throw new ArgumentError("Incorrect number or type of arguments");
  }
  void _putImageData_1(imagedata, dx, dy); // native "putImageData";
  void _putImageData_2(imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight); // native "putImageData";

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.quadraticCurveTo; @docsEditable true
  void quadraticCurveTo(num cpx, num cpy, num x, num y); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.rect; @docsEditable true
  void rect(num x, num y, num width, num height); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.restore; @docsEditable true
  void restore(); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.rotate; @docsEditable true
  void rotate(num angle); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.save; @docsEditable true
  void save(); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.scale; @docsEditable true
  void scale(num sx, num sy); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setAlpha; @docsEditable true
  void setAlpha(num alpha); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setCompositeOperation; @docsEditable true
  void setCompositeOperation(String compositeOperation); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setLineCap; @docsEditable true
  void setLineCap(String cap); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setLineDash; @docsEditable true
  void setLineDash(List<num> dash); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setLineJoin; @docsEditable true
  void setLineJoin(String join); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setLineWidth; @docsEditable true
  void setLineWidth(num width); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setMiterLimit; @docsEditable true
  void setMiterLimit(num limit); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setShadow; @docsEditable true
  void setShadow(num width, num height, num blur, [c_OR_color_OR_grayLevel_OR_r, num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.setTransform; @docsEditable true
  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.stroke; @docsEditable true
  void stroke(); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.strokeRect; @docsEditable true
  void strokeRect(num x, num y, num width, num height, [num lineWidth]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.strokeText; @docsEditable true
  void strokeText(String text, num x, num y, [num maxWidth]); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.transform; @docsEditable true
  void transform(num m11, num m12, num m21, num m22, num dx, num dy); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.translate; @docsEditable true
  void translate(num tx, num ty); // native;

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.webkitGetImageDataHD; @docsEditable true
  ImageData webkitGetImageDataHD(num sx, num sy, num sw, num sh) {
    return _convertNativeToDart_ImageData(_webkitGetImageDataHD_1(sx, sy, sw, sh));
  }
  @Creates('ImageData|=Object')
  _webkitGetImageDataHD_1(sx, sy, sw, sh); // native "webkitGetImageDataHD";

  /**
   *
   */
  /// @domName CanvasRenderingContext2D.webkitPutImageDataHD; @docsEditable true
  void webkitPutImageDataHD(ImageData imagedata, num dx, num dy, [num dirtyX, num dirtyY, num dirtyWidth, num dirtyHeight]) {
    if (!?dirtyX &&
        !?dirtyY &&
        !?dirtyWidth &&
        !?dirtyHeight) {
      var imagedata_1 = _convertDartToNative_ImageData(imagedata);
      _webkitPutImageDataHD_1(imagedata_1, dx, dy);
      return;
    }
    var imagedata_2 = _convertDartToNative_ImageData(imagedata);
    _webkitPutImageDataHD_2(imagedata_2, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
    return;
    throw new ArgumentError("Incorrect number or type of arguments");
  }
  void _webkitPutImageDataHD_1(imagedata, dx, dy); // native "webkitPutImageDataHD";
  void _webkitPutImageDataHD_2(imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight); // native "webkitPutImageDataHD";


  /**
   * Sets the color used inside shapes.
   * [r], [g], [b] are 0-255, [a] is 0-1.
   */
  void setFillColorRgb(int r, int g, int b, [num a = 1]) {
    this.fillStyle = 'rgba($r, $g, $b, $a)';
  }

  /**
   * Sets the color used inside shapes.
   * [h] is in degrees, 0-360.
   * [s], [l] are in percent, 0-100.
   * [a] is 0-1.
   */
  void setFillColorHsl(int h, num s, num l, [num a = 1]) {
    this.fillStyle = 'hsla($h, $s%, $l%, $a)';
  }

  /**
   * Sets the color used for stroking shapes.
   * [r], [g], [b] are 0-255, [a] is 0-1.
   */
  void setStrokeColorRgb(int r, int g, int b, [num a = 1]) {
    this.strokeStyle = 'rgba($r, $g, $b, $a)';
  }

  /**
   * Sets the color used for stroking shapes.
   * [h] is in degrees, 0-360.
   * [s], [l] are in percent, 0-100.
   * [a] is 0-1.
   */
  void setStrokeColorHsl(int h, num s, num l, [num a = 1]) {
    this.strokeStyle = 'hsla($h, $s%, $l%, $a)';
  }
}

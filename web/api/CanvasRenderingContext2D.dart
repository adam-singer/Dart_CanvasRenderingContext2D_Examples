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
   * With [globalAplpha] applied this sets how shapes and images are drawn onto 
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

  /// @domName CanvasRenderingContext2D.lineCap; @docsEditable true
  String lineCap;

  /// @domName CanvasRenderingContext2D.lineDashOffset; @docsEditable true
  num lineDashOffset;

  /// @domName CanvasRenderingContext2D.lineJoin; @docsEditable true
  String lineJoin;

  /// @domName CanvasRenderingContext2D.lineWidth; @docsEditable true
  num lineWidth;

  /// @domName CanvasRenderingContext2D.miterLimit; @docsEditable true
  num miterLimit;

  /// @domName CanvasRenderingContext2D.shadowBlur; @docsEditable true
  num shadowBlur;

  /// @domName CanvasRenderingContext2D.shadowColor; @docsEditable true
  String shadowColor;

  /// @domName CanvasRenderingContext2D.shadowOffsetX; @docsEditable true
  num shadowOffsetX;

  /// @domName CanvasRenderingContext2D.shadowOffsetY; @docsEditable true
  num shadowOffsetY;

  /// @domName CanvasRenderingContext2D.strokeStyle; @docsEditable true
  dynamic strokeStyle;

  /// @domName CanvasRenderingContext2D.textAlign; @docsEditable true
  String textAlign;

  /// @domName CanvasRenderingContext2D.textBaseline; @docsEditable true
  String textBaseline;

  /// @domName CanvasRenderingContext2D.webkitBackingStorePixelRatio; @docsEditable true
  //final num webkitBackingStorePixelRatio;
  num webkitBackingStorePixelRatio;
  
  /// @domName CanvasRenderingContext2D.webkitImageSmoothingEnabled; @docsEditable true
  bool webkitImageSmoothingEnabled;

  /// @domName CanvasRenderingContext2D.webkitLineDash; @docsEditable true
  List webkitLineDash;

  /// @domName CanvasRenderingContext2D.webkitLineDashOffset; @docsEditable true
  num webkitLineDashOffset;

  /// @domName CanvasRenderingContext2D.arc; @docsEditable true
  void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise); //native;

  /// @domName CanvasRenderingContext2D.arcTo; @docsEditable true
  void arcTo(num x1, num y1, num x2, num y2, num radius); // native;

  /// @domName CanvasRenderingContext2D.beginPath; @docsEditable true
  void beginPath(); // native;

  /// @domName CanvasRenderingContext2D.bezierCurveTo; @docsEditable true
  void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y); // native;

  /// @domName CanvasRenderingContext2D.clearRect; @docsEditable true
  void clearRect(num x, num y, num width, num height); // native;

  /// @domName CanvasRenderingContext2D.clearShadow; @docsEditable true
  void clearShadow(); // native;

  /// @domName CanvasRenderingContext2D.clip; @docsEditable true
  void clip(); // native;

  /// @domName CanvasRenderingContext2D.closePath; @docsEditable true
  void closePath(); // native;

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

  /// @domName CanvasRenderingContext2D.createLinearGradient; @docsEditable true
  CanvasGradient createLinearGradient(num x0, num y0, num x1, num y1); // native;

  /// @domName CanvasRenderingContext2D.createPattern; @docsEditable true
  CanvasPattern createPattern(canvas_OR_image, String repetitionType); // native;

  /// @domName CanvasRenderingContext2D.createRadialGradient; @docsEditable true
  CanvasGradient createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1); // native;

  /// @domName CanvasRenderingContext2D.drawImage; @docsEditable true
  void drawImage(canvas_OR_image_OR_video, num sx_OR_x, num sy_OR_y, [num sw_OR_width, num height_OR_sh, num dx, num dy, num dw, num dh]); // native;

  /// @domName CanvasRenderingContext2D.drawImageFromRect; @docsEditable true
  void drawImageFromRect(ImageElement image, [num sx, num sy, num sw, num sh, num dx, num dy, num dw, num dh, String compositeOperation]); // native;

  /// @domName CanvasRenderingContext2D.fill; @docsEditable true
  void fill(); // native;

  /// @domName CanvasRenderingContext2D.fillRect; @docsEditable true
  void fillRect(num x, num y, num width, num height); // native;

  /// @domName CanvasRenderingContext2D.fillText; @docsEditable true
  void fillText(String text, num x, num y, [num maxWidth]); // native;

  /// @domName CanvasRenderingContext2D.getImageData; @docsEditable true
  ImageData getImageData(num sx, num sy, num sw, num sh) {
    return _convertNativeToDart_ImageData(_getImageData_1(sx, sy, sw, sh));
  }
  @Creates('ImageData|=Object')
  _getImageData_1(sx, sy, sw, sh); // native "getImageData";

  /// @domName CanvasRenderingContext2D.getLineDash; @docsEditable true
  List<num> getLineDash(); // native;

  /// @domName CanvasRenderingContext2D.isPointInPath; @docsEditable true
  bool isPointInPath(num x, num y); // native;

  /// @domName CanvasRenderingContext2D.lineTo; @docsEditable true
  void lineTo(num x, num y); // native;

  /// @domName CanvasRenderingContext2D.measureText; @docsEditable true
  TextMetrics measureText(String text); // native;

  /// @domName CanvasRenderingContext2D.moveTo; @docsEditable true
  void moveTo(num x, num y); // native;

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

  /// @domName CanvasRenderingContext2D.quadraticCurveTo; @docsEditable true
  void quadraticCurveTo(num cpx, num cpy, num x, num y); // native;

  /// @domName CanvasRenderingContext2D.rect; @docsEditable true
  void rect(num x, num y, num width, num height); // native;

  /// @domName CanvasRenderingContext2D.restore; @docsEditable true
  void restore(); // native;

  /// @domName CanvasRenderingContext2D.rotate; @docsEditable true
  void rotate(num angle); // native;

  /// @domName CanvasRenderingContext2D.save; @docsEditable true
  void save(); // native;

  /// @domName CanvasRenderingContext2D.scale; @docsEditable true
  void scale(num sx, num sy); // native;

  /// @domName CanvasRenderingContext2D.setAlpha; @docsEditable true
  void setAlpha(num alpha); // native;

  /// @domName CanvasRenderingContext2D.setCompositeOperation; @docsEditable true
  void setCompositeOperation(String compositeOperation); // native;

  /// @domName CanvasRenderingContext2D.setLineCap; @docsEditable true
  void setLineCap(String cap); // native;

  /// @domName CanvasRenderingContext2D.setLineDash; @docsEditable true
  void setLineDash(List<num> dash); // native;

  /// @domName CanvasRenderingContext2D.setLineJoin; @docsEditable true
  void setLineJoin(String join); // native;

  /// @domName CanvasRenderingContext2D.setLineWidth; @docsEditable true
  void setLineWidth(num width); // native;

  /// @domName CanvasRenderingContext2D.setMiterLimit; @docsEditable true
  void setMiterLimit(num limit); // native;

  /// @domName CanvasRenderingContext2D.setShadow; @docsEditable true
  void setShadow(num width, num height, num blur, [c_OR_color_OR_grayLevel_OR_r, num alpha_OR_g_OR_m, num b_OR_y, num a_OR_k, num a]); // native;

  /// @domName CanvasRenderingContext2D.setTransform; @docsEditable true
  void setTransform(num m11, num m12, num m21, num m22, num dx, num dy); // native;

  /// @domName CanvasRenderingContext2D.stroke; @docsEditable true
  void stroke(); // native;

  /// @domName CanvasRenderingContext2D.strokeRect; @docsEditable true
  void strokeRect(num x, num y, num width, num height, [num lineWidth]); // native;

  /// @domName CanvasRenderingContext2D.strokeText; @docsEditable true
  void strokeText(String text, num x, num y, [num maxWidth]); // native;

  /// @domName CanvasRenderingContext2D.transform; @docsEditable true
  void transform(num m11, num m12, num m21, num m22, num dx, num dy); // native;

  /// @domName CanvasRenderingContext2D.translate; @docsEditable true
  void translate(num tx, num ty); // native;

  /// @domName CanvasRenderingContext2D.webkitGetImageDataHD; @docsEditable true
  ImageData webkitGetImageDataHD(num sx, num sy, num sw, num sh) {
    return _convertNativeToDart_ImageData(_webkitGetImageDataHD_1(sx, sy, sw, sh));
  }
  @Creates('ImageData|=Object')
  _webkitGetImageDataHD_1(sx, sy, sw, sh); // native "webkitGetImageDataHD";

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

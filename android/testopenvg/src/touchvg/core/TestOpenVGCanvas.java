/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package touchvg.core;

public class TestOpenVGCanvas {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  protected TestOpenVGCanvas(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(TestOpenVGCanvas obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        touchvgJNI.delete_TestOpenVGCanvas(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public TestOpenVGCanvas(int width, int height, int scale) {
    this(touchvgJNI.new_TestOpenVGCanvas(width, height, scale), true);
  }

  public void resize(int width, int height) {
    touchvgJNI.TestOpenVGCanvas_resize(swigCPtr, this, width, height);
  }

  public int getWidth() {
    return touchvgJNI.TestOpenVGCanvas_getWidth(swigCPtr, this);
  }

  public int getHeight() {
    return touchvgJNI.TestOpenVGCanvas_getHeight(swigCPtr, this);
  }

  public void prepareToDraw(boolean dynzoom, int mstime) {
    touchvgJNI.TestOpenVGCanvas_prepareToDraw(swigCPtr, this, dynzoom, mstime);
  }

  public void draw(int bits, int n, boolean pathCached) {
    touchvgJNI.TestOpenVGCanvas_draw__SWIG_0(swigCPtr, this, bits, n, pathCached);
  }

  public void draw(int bits, int n) {
    touchvgJNI.TestOpenVGCanvas_draw__SWIG_1(swigCPtr, this, bits, n);
  }

  public void dyndraw(float x, float y) {
    touchvgJNI.TestOpenVGCanvas_dyndraw(swigCPtr, this, x, y);
  }

}

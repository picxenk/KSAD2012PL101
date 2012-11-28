class Button {
  float x, y;
  int w = 50;
  int h = 50;
  int buttonShape = 1; // 1 = rect, 2 = circle
  color onColor = color(200);
  color offColor = color(100);
  boolean clicked = false;
  
  Button(float sx, float sy) {
    x = sx;
    y = sy;
  }
  
  boolean onMouse() {
    boolean result = false;
    
    if (buttonShape == 1) {
      if ((x < mouseX && mouseX < x+w)&&(y < mouseY && mouseY < y+h)) result = true;
    }
    if (buttonShape == 2) {
      if (abs(dist(mouseX, mouseY, x, y)) < (w/2)) result = true;
    }
    
    return result;
  }
  
  void setShape(int type) {
    buttonShape = type;
  }
  
  void show() {
    
    if (onMouse()) {
      if (mousePressed) { fill(offColor); clicked = true; }
      else { fill(onColor); clicked = false; }
    } else {
      fill(offColor);
    }

    if (buttonShape == 1) rect(x, y, w, h);
    if (buttonShape == 2) ellipse(x, y, w, w);
    
  }
}

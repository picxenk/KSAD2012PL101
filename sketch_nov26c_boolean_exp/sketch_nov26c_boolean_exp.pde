boolean inR, inC;
color bgColor;

void setup() {
  size(300, 300);
  smooth();
  noStroke();
  
  bgColor = color(0);
}

void draw() {
  background(bgColor);
  
  inR = inRect(50, 50, 100);
  inC = inCircle(200, 200, 100);
  
  if (inR || inC) {
    bgColor = color(255);
  } else {
    bgColor = color(0);
  }
  
}

boolean inRect(int x, int y, int w) {
  boolean result;
  
  if ((mouseX > x && mouseX < x+w)&&(mouseY > y && mouseY < y+w)) result = true;
  else result = false;

  fill(255, 0, 0);
  rect(x, y, w, w);
  
  return result;
}

boolean inCircle(int x, int y, int d) {
  boolean result;
  
  if (dist(mouseX, mouseY, x, y) < d/2) result = true;
  else result = false;
  
  fill(0, 0, 255);
  ellipse(x, y, d, d);
  
  return result;
}

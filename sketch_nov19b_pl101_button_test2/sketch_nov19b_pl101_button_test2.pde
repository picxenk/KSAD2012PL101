float x, y;
float dx, dy;

void setup() {
  size(300, 300);
  smooth();
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  
  if ((x < mouseX && mouseX < x+50) && (y < mouseY && mouseY < y+50)) {
    if (mousePressed) {
      dx = pmouseX - x;
      dy = pmouseY - y;
      x = mouseX - dx;
      y = mouseY - dy;
    }
  }
  rect(x, y, 50, 50);
}


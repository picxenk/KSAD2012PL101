float x, y;
int penMode;
color currentColor;

void setup() {
  size(300, 300);
  background(255);
  smooth();
  
  x = 10;
  y = 10;
  penMode = 0;
  currentColor = color(0);
}

void draw() {
  drawMenuBar();


  x = mouseX;
  y = mouseY;
  
  if (mousePressed == true) {
    if (mouseX < 40 && mouseY < 10) {
      if (mouseX > 10 && mouseX < 20) currentColor = currentColor + color(10, 0, 0);
      if (mouseX > 20 && mouseX < 30) currentColor = currentColor + color(0, 10, 0);
      if (mouseX > 30 && mouseX < 40) currentColor = currentColor + color(0, 0, 10);
    } else {
      if (penMode == 0) brush0(x, y);
      if (penMode == 1) brush1(x, y);
      if (penMode == 2) brush2(x, y);
      if (penMode == 3) brush3(x, y);
    }
  }
  
  if (keyPressed) {
    if (key == 'c') {
      background(255);
    }
    if (key == 'r') penMode = 0;
    if (key == 'q') penMode = 1;
    if (key == 'w') penMode = 2;
    if (key == 'e') penMode = 3;
  }
}

void brush0(float x, float y) {
//  rect(x, y, 10, 10);
  float startX, startY, endX, endY, s1, s2;
  stroke(currentColor);
  s1 = -10;
  s2 = 10;
  startX = x + random(s1, s2);
  startY = y + random(s1, s2);
  endX = x + random(s1, s2);
  endY = y + random(s1, s2);
  line(startX, startY, endX, endY);
}

void brush1(float x, float y) {
    stroke(currentColor);
    point(x, y);
    point(x+1, y+1);
    point(x-1, y-1);
    point(x+1, y-1);
    point(x-1, y+1);
}

void brush2(float x, float y) {
  for (int i=0; i<30; i=i+1) {
    currentColor = currentColor + (color(random(100, 150), random(100, 200)));
    stroke(currentColor);
    point(x+random(-5, 5), y+random(-5, 5));
  }
}

void brush3(float x, float y) {
  stroke(currentColor);
  fill(currentColor);

  for (int i=0; i<20; i=i+1) {
    ellipse(x+random(-5, 5), y+random(-5, 5), 3, 3);
  }
}

void drawMenuBar() {
  fill(currentColor);
  rect(0, 0, 10, 10);
  fill(255, 0, 0);
  rect(10, 0, 10, 10);
  fill(0, 255, 0);
  rect(20, 0, 10, 10);
  fill(0, 0, 255);
  rect(30, 0, 10, 10);
}




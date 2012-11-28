int x, y;
color backgroundColor;
boolean b1, b2, b3, b4;

void setup() {
  size(300, 400);
  smooth();
  noStroke();
  x = width/2;
  y = height/2;
  backgroundColor = color(255);
  background(backgroundColor);
}

void draw() {
//  background(backgroundColor);
  fill(backgroundColor);
  rect(0, 0, 150, 70);
  
  b1 = drawButton(50, 0);
  b2 = drawButton(50, 50);
  b3 = drawButton(0, 25);
  b4 = drawButton(100, 25);
  
  if (b1) y = y - 1;
  if (b2) y = y + 1;
  if (b3) x = x - 1;
  if (b4) x = x + 1;
  
  fill(255,0,0);
  ellipse(x, y, 5, 5);
  
}

boolean drawButton(float x, float y) {
  float bx = x;
  float by = y;
  boolean clicked = false;
  
  fill(30);
  rect(x, y, 52, 22);
  
  if ((bx < mouseX && mouseX < bx+50) && (by < mouseY && mouseY < by+20)) {
      if (mousePressed) {
      bx = x+2;
      by = y+2;
//      backgroundColor = backgroundColor + color(random(10), random(10), random(10));
      clicked = true;
    } else {
      bx = x;
      by = y;
      clicked = false;
    }
    fill(120, 120, 200);
  } else {
    fill(90, 90, 160);
  }
  rect(bx, by, 50, 20);
  
  return clicked;
}

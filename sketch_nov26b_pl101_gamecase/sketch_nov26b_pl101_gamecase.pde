PImage img;
int sLeft, sRight, sTop, sBottom;
boolean leftButtonPressed;

void setup() {
  size(800, 467);
  smooth();
  noStroke();
  
  img = loadImage("game_case.png");
  sLeft = 212;
  sRight = 590;
  sTop = 118;
  sBottom = 358;
  
 
}

void draw() {
  image(img, 0, 0);
  fill(200);
  rect(sLeft, sTop, sRight-sLeft, sBottom-sTop);  

  leftButtonPressed = drawButtonA(85, 340);
  
  if (leftButtonPressed) {
    fill(100);
    rect(sLeft, sTop, 20, 20);
  }


}


boolean drawButtonA(float x, float y) {
  boolean result;
  int g = 0;
  int r = 30;
  int d = r * 2;
  
  // draw button shadow
  fill(0);
  ellipse(x, y, d+2, d+2);
  
  // check mouse click
  if ((mouseX > x-r && mouseX < x+r)&&(mouseY > y-r && mouseY < y+r)) {
    fill(220, 60, 60);
    if (mousePressed) { 
      result = true; 
      g = 2;
    } else { 
      result = false;
    }
  } else {
    fill(180, 60, 60);
    result = false;
  }  
  
  // draw button
  ellipse(x+g, y+g, d, d);
  
  return result;
}


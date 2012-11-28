float bx, by;
int bw;
float speedX, speedY;

float stickX, stickY;
int stickW, stickH;

void setup() {
  size(300, 300);
  smooth();
  noStroke();
  
  background(0);
  
  bx = width/2;
  by = height/2;
  bw = 10;
  stickX = 150;
  stickY = 250;
  stickW = 50;
  stickH = 10;
  
  speedX = random(-5, 5);
  speedY = random(-5, 5);
  
}

void draw() {
  background(0);
  
  moveBall();
  moveStick();
  
  
  rect(bbX, bbY, bbW, bbH);
  


}

void moveBall() {
  
  bx = bx + speedX;
  by = by + speedY;
  
  if (bx < 0 || bx+bw > width) speedX = speedX * -1;
  if (by < 0 || by+bw > height) speedY = speedY * -1;
  if (bx > stickX && bx < stickX+stickW) {
    if(by+bw >= stickY) {
      speedY = speedY * -1;
    }
  }
  fill(255);
  rect(bx, by, bw, bw);
}

void moveStick() {
  fill(255);
  rect(stickX, stickY, stickW, stickH);
  if (keyPressed) {
    if(keyCode == LEFT) stickX = stickX - 5;
    if(keyCode == RIGHT) stickX = stickX + 5;
  }
}

void drawCBlock(float x, float y, int w, int h) {
  c
}

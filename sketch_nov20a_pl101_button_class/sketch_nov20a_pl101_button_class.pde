Button b1, b2;

void setup() {
  size(300, 300);
  smooth();
  noStroke();

  b1 = new Button(10, 10);
  b2 = new Button(100, 35);
  b2.setShape(2);
}

void draw() {
  background(30, 30, 90);
  
  if (b1.clicked) background(100, 30, 30);
  if (b2.clicked) background(30, 100, 30);
  
  b1.show();
  b2.show();
  
}


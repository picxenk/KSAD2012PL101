int screen_width_size = 300;
int screen_height_size = 450;
float lock_button_x = 55;
float lock_button_y = 355;

byte screen_mode = -1; // -1:locked, 0:home, 1~:app
boolean clickAppButton01 = false;
boolean clickAppButton02 = false;

void setup() {
  size(screen_width_size, screen_height_size);
  
}

void draw() {
  background(30);
  
  if (screen_mode == -1) {
    showLockPage();
  } else if (screen_mode == 0) {
    showHomePage();
  } else {
    showApp(screen_mode);
  }
}

void showLockPage() {
  fill(100);
  rect(50, 350, 200, 40);
  
  if ((mouseX>lock_button_x&&mouseX<lock_button_x+50)&&(mouseY>lock_button_y&&mouseY<lock_button_y+30)) {
    if (mousePressed) {
      lock_button_x = mouseX-25;
      if (lock_button_x < 55) lock_button_x = 55;
      if (lock_button_x > 195) lock_button_x = 195;
    } else {
      if (lock_button_x == 195) screen_mode = 0;
      else lock_button_x = 55;
    }
  }
  
  fill(200);
  rect(lock_button_x, lock_button_y, 50, 30);
}

void showHomePage() {
  background(255);
  
  clickAppButton01 = showAppButton01(20, 20);
  if (clickAppButton01) {
    screen_mode = 1;   
  }
  
  clickAppButton02 = showAppButton02(90, 20);
  if (clickAppButton02) {
    screen_mode = 2;
  }
}

boolean showAppButton01(int button_x, int button_y) {
  boolean clicked = false;
  color button_bg = color(210, 60, 60);
  
  if ((mouseX>button_x&&mouseX<button_x+50)&&(mouseY>button_y&&mouseY<button_y+50)) {
    if (mousePressed) {
      button_bg = color(150, 30, 30);
      clicked = true;
    } 
  }
  
  fill(button_bg);
  rect(button_x, button_y, 50, 50);
  
  return clicked;
}

boolean showAppButton02(int button_x, int button_y) {
  boolean clicked = false;
  color button_bg = color(60, 210, 60);
  
  if ((mouseX>button_x&&mouseX<button_x+50)&&(mouseY>button_y&&mouseY<button_y+50)) {
    if (mousePressed) {
      button_bg = color(30, 150, 30);
      clicked = true;
    } 
  }
  
  fill(button_bg);
  rect(button_x, button_y, 50, 50);
  
  return clicked;
}

void showExitAppButton() {
  fill(0);
  rect(0, 0, 20, 20);
  
  if ((mouseX>0&&mouseX<20)&&(mouseY>0&&mouseY<20)) {
    if (mousePressed) screen_mode = 0;
  }
}

/*************************************************************************
 APPs
*************************************************************************/
void showApp(byte app_number) {
  if (app_number == 1) startApp01();
  if (app_number == 2) startApp02();
}

void startApp01() {
    background(210, 60, 60);
    showExitAppButton();
}

void startApp02() {
    background(60, 210, 60);
    showExitAppButton();
}



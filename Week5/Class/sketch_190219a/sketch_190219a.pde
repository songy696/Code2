int START_SCREEN = 0;
int PLAY_SCREEN = 1;
int END_SCREEN = 2;
int MAP_SCREEN = 3;
int SETTINGS_SCREEN = 4;
int STATE = MAP_SCREEN;
void setup() {
  size(500, 500);
}
void draw() {
  //if (STATE == START_SCREEN) {
  
  //} else if (STATE == 1) {
  
  //} else if (STATE == 2) {
  
  //}
  switch (STATE) {
    case 0: // start screen
      showStartScreen();
    break;
    case 4: // settings screen
      //background(230, 30, 10);
      fill(255);
      ellipse(200, 200, 100, 40);
    break;
    case 1: // play screen
      showPlayScreen();
    break;
    case 2: // end screen
      showEndScreen();
    break;
    case 3: // map screen
      showMapScreen();
    break;
  }
}
void keyTyped() {
  switch(key) {
    case 'q':
      STATE = START_SCREEN;
    break;
    case 'w':
      STATE = END_SCREEN;
    break;
    case 'e':
      STATE = MAP_SCREEN;
    break;
    case 'r':
      STATE = PLAY_SCREEN;
    break;
    case 'u':
      STATE = SETTINGS_SCREEN;
    break;
  }
}
void showStartScreen(){
  background(200);
  textAlign(CENTER);
  textSize(32);
  text("Loading!", 250, 250);
}
void showPlayScreen(){
  background(200, 200, 10);
  textAlign(CENTER);
  textSize(32);
  text("Playing!", sin(frameCount*.02)*200 + 250, 250);
}
void showEndScreen(){
  background(10);
  textAlign(CENTER);
  textSize(32);
  text("END!", 250, 250);
}
void showMapScreen(){
  background(50, 200, 10);
  textAlign(CENTER);
  textSize(32);
  text("MAP!", 250, 250);
}

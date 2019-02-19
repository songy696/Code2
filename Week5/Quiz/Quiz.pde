float sqXPos, sqYPos;
float sqXPos1, sqYPos1;
float sqXPos2, sqYPos2;
float sqXPos3, sqYPos3;
float sqW, sqH;
float sqW1, sqH1;
float sqW2, sqH2;
float sqW3, sqH3;
Square squ;
Square squ1;
Square squ2;
Square squ3;

String Quote = "I'm square1";
String Quote1 = "I'm square2";
String Quote2 = "I'm square3";
String Quote3 = "I'm square4";

float startTime, endTime;
float totalTime = 1;
float totalTime1 = 2;
float totalTime2 = 3;
float totalTime3 = 4;
color normalColor, activeColor;
boolean isActive = false;
boolean isActive1 = false;
boolean isActive2 = false;
boolean isActive3 = false;

void setup(){
  size(600, 600);
  sqXPos = 200;
  sqYPos = 200;
  sqXPos1 = 300;
  sqYPos1 = 200;
  sqXPos2 = width/2;
  sqYPos2 = 400;
  sqXPos3 = 10;
  sqYPos3 = 100;
  sqW = 70;
  sqH = 80;
  sqW1 = 80;
  sqH1 = 70;
  sqW2 = 90;
  sqH2 = 110;
  sqW3 = 100;
  sqH3 = 20;

  squ = new Square(sqXPos, sqYPos, sqW, sqH);
  squ1 = new Square(sqXPos1, sqYPos1, sqW1, sqH1);
  squ2 = new Square(sqXPos2, sqYPos2, sqW2, sqH2);
  squ3 = new Square(sqXPos3, sqYPos3, sqW3, sqH3);
  
  normalColor = color(255);
  activeColor = color(0);
  totalTime *= 1000;
  totalTime1 *= 1000;
  totalTime2 *= 1000;
  totalTime3 *= 1000;
}

void draw(){
  background(220, 20, 220);
  //fill(255);
  
  if(isActive){
    fill(activeColor);
    squ.display();
    switchBackStartTime();
  } else {
    fill(normalColor);
    squ.display();
  }
  
  if(isActive1){
    fill(activeColor);
    squ1.display();
    switchBackStartTime();
  } else {
    fill(normalColor);
    squ1.display();
  }
  
  if(isActive2){
    fill(activeColor);
    squ2.display();
    switchBackStartTime();
  } else{
    fill(normalColor);
    squ2.display();
  }
  
  if(isActive3){
    fill(activeColor);
    squ3.display();
    switchBackStartTime();
  } else{
    fill(normalColor);
    squ3.display();
  }
  
  drawText();
}

void mouseClicked(){
  if(squ.MouseIsOver()){
    isActive = true;
    startTime = millis();
  }
  if(squ1.MouseIsOver()){
    isActive1 = true;
    startTime = millis();
  }
  if(squ2.MouseIsOver()){
    isActive2 = true;
    startTime = millis();
  }
  if(squ3.MouseIsOver()){
    isActive3 = true;
    startTime = millis();
  }  
}

//attempt the keyboard typing but somehow does not work....
void keyTyped(){
  if(keyCode == 'q'){
  isActive = true;
  startTime = millis();
  }
  if(keyCode == 'w'){
  isActive1 = true;
  startTime = millis();
  }
  if(keyCode == 'e'){
  isActive2 = true;
  startTime = millis();
  }
  if(keyCode == 'r'){
  isActive3 = true;
  startTime = millis();
  }
}

void switchBackStartTime(){
  if(millis() - startTime > totalTime){
    isActive = false;
  }
  if(millis() - startTime > totalTime1){
    isActive1 = false;
  }
  if(millis() - startTime > totalTime2){
    isActive2 = false;
  }
  if(millis() - startTime > totalTime3){
    isActive3 = false;
  }
}

void drawText(){
  fill(50);
  textSize(10);
  text(Quote, sqXPos + 10, sqYPos + sqH/2);
  text(Quote1, sqXPos1 + 10, sqYPos1 + sqH1/2);
  text(Quote2, sqXPos2 + 10, sqYPos2 + sqH2/2);
  text(Quote3, sqXPos3 + 10, sqYPos3 + sqH3/2);
}

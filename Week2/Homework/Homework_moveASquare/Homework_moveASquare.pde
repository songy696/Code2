float xPos, yPos;
float xDirec, yDirec;
//float rightButton, leftButton, upButton, downButton;

boolean rightClick = false;
boolean leftClick = false;
boolean upClick = false;
boolean downClick = false;

void setup(){
  size(800, 600);
  rectMode(CENTER);
  noStroke();
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  background(150, 0, 150);
  
  car();
  rightButton();
  leftButton();
  upButton();
  downButton();
  
}

void car(){
  rect(xPos, yPos, 140, 70);
}

void rightButton(){
  if(mouseX > 
}

void leftButton(){
  
}

void upButton(){
  
}

void downButton(){
  
}

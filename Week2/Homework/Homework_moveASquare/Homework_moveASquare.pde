float xPos, yDirec;
float speed;
boolean rightPress = false;
boolean leftPress = false;
boolean upPress = false;
boolean downPress = false;

void setup(){
  size(800, 600);
  noStroke();
}

void draw(){
  background(95, 158, 160);
  
  //car moving forward
  xPos = xPos + .3;
  
  car(xPos, 70);
  
  rightButton(210, 500, 65);
  leftButton(50, 500, 65);
  upButton(130, 420, 65);
  downButton(130, 500, 65);
  
}

void mousePressed(){
  //rotate ritght
  if (mouseX > 210 && mouseX < 275 && mouseY > 500 && mouseY < 565){
    rightPress = !rightPress;
  }
  if(rightPress){
    //rotate square bit by bit
  }
  
  //rotate left
  if (mouseX > 50 && mouseX < 115 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
  }
  if(rightPress){
    //rotate square bit by bit
  }
  
  //Accelerate forward
  if (mouseX > 130 && mouseX < 115 && mouseY > 420 && mouseY < 482){
    upPress = !upPress;
  }
  if(rightPress){
    //move forward
  }
  
  //move backwards
  if (mouseX > 130 && mouseX < 195 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
  }
  if(rightPress){
    //move backwards
  }
  
}

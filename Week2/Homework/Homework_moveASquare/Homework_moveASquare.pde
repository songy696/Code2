float xPos, yPos, yDirec;
float speed = 2;
boolean rightPress = false;
boolean leftPress = false;
boolean upPress = false;
boolean downPress = false;
float angle = 0;

void setup(){
  size(800, 600);
  noStroke();
  rectMode(CENTER);
  
}

void draw(){
  background(95, 158, 160);
  
  //car moving forward
  xPos = xPos + .3;
  yPos = 70;
  //pushMatrix();
  //rotate(radians(angle));
  car(xPos, yPos);
  //popMatrix();
  
  rightButton(210 + 65/2, 500 + 65/2, 65);
  leftButton(50 + 65/2, 500 + 65/2, 65);
  upButton(130 + 65/2, 420 + 65/2, 65);
  downButton(130 + 65/2, 500 + 65/2, 65);
  
  angle += 1;
  
}

void mousePressed(){
  //rotate ritght
  if (mouseX > 210 && mouseX < 275 && mouseY > 500 && mouseY < 565){
    rightPress = !rightPress;
  }
  if(rightPress){
    //rotate square bit by bit
  rotate(radians(angle));
  car(xPos, 70);
  }
  
  //rotate left
  if (mouseX > 50 && mouseX < 115 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
  }
  if(rightPress){
    //rotate square bit by bit
    pushMatrix();
  rotate(radians(angle));
  car(xPos, yPos);
  popMatrix();
  }
  
  //Accelerate forward
  if (mouseX > 130 && mouseX < 115 && mouseY > 420 && mouseY < 482){
    upPress = !upPress;
  }
  if(rightPress){
    //move forward
    speed = speed * speed ;
    xPos += speed;
  }
  
  //move backwards
  if (mouseX > 130 && mouseX < 195 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
  }
  if(rightPress){
    //move backwards
  }
  
}

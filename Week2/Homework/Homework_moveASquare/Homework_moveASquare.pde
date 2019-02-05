float xPos, yPos, Direc;
float speed = 1;
boolean rightPress = false;
boolean leftPress = false;
boolean upPress = false;
boolean downPress = false;
float angle = 0;
float acc = .3;

void setup(){
  size(800, 600);
  noStroke();
  rectMode(CENTER);
  yPos = height/2 - 50;
  xPos++;
}

void draw(){
  background(95, 158, 160);
  car();
  Direc = sqrt(xPos*xPos + yPos*yPos); //I thought this calculation will figure out the direction of the car
  
  //Buttons__________________________________________________________________
  rightButton(210 + 65/2, 500 + 65/2, 65);
  leftButton(50 + 65/2, 500 + 65/2, 65);
  upButton(130 + 65/2, 420 + 65/2, 65);
  downButton(130 + 65/2, 500 + 65/2, 65);
  
  // tried to create a right turn ___________________________________________
  pushMatrix();
   xPos++;   //car moving forward
    if(rightPress){
      angle += 0.1;
      rotate(radians(angle));
      car();
    }
    popMatrix();
    
  // tried to create a left turn ___________________________________________
  pushMatrix();
   xPos++;   //car moving forward
    if(leftPress){
      angle -= 0.1;
      rotate(radians(angle));
      car();
    }
    popMatrix(); 
    
    // acceleration.. however the button doesnt work _______________________
  //  if(!upPress){
  //  //move forward
  //  speed = speed + acc;
  //  xPos ++;
  //  xPos = xPos + speed;
  //}
  
  if (mousePressed && mouseX > 50 && mouseX < 115 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
    speed = speed + acc;
    xPos ++;
    xPos = xPos + speed;
  }
    
}

void mousePressed(){
  //right rotation button
  if ( mouseX > 210 && mouseX < 275 && mouseY > 500 && mouseY < 565){
    rightPress = !rightPress;
  }
  
  //left rotation button press
  if (mouseX > 50 && mouseX < 115 && mouseY > 500 && mouseY < 565){
    leftPress = !leftPress;
  }
  
  //Accelerate forward
  if (mouseX > 130 && mouseX < 115 && mouseY > 420 && mouseY < 482){
    upPress = !upPress;
  }
  //if(!upPress){
  //  speed = speed + acc;
  //  xPos ++;
  //  xPos = xPos + speed;
  //}
  
  //move backwards
  if (mouseX > 130 && mouseX < 195 && mouseY > 500 && mouseY < 565){
    downPress = !downPress;
    //code that makes the car backwards
  }
  
}

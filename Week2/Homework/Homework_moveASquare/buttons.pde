//
void rightButton(float rightButtonX, float rightButtonY, float rightButtonZ){
  //hightlights
  if (mouseX > rightButtonX && 
    mouseX < rightButtonX + rightButtonZ && 
    mouseY > rightButtonY && 
    mouseY < rightButtonY + rightButtonZ)
    {
    //roatating a car to the right
    fill(200);
    } else {
    //moving a car forward  
    fill(255);
    }
    //button
   noStroke();
   rect(rightButtonX, rightButtonY, rightButtonZ, rightButtonZ); 
   //line
   fill(0);
   strokeWeight(5);
   stroke(100);
   line(rightButtonX, rightButtonY -25, rightButtonX + 25, rightButtonY);
   line(rightButtonX + 25, rightButtonY, rightButtonX, rightButtonY + 25);
}

void leftButton(float leftButtonX, float leftButtonY, float leftButtonZ){
  if (mouseX > leftButtonX && 
    mouseX < leftButtonX + leftButtonZ && 
    mouseY > leftButtonY && 
    mouseY < leftButtonY + leftButtonZ)
    {
    //roatating a car to the right
    fill(200);
    } else {
    //moving a car forward  
    fill(255);
    }
   noStroke();
   rect(leftButtonX, leftButtonY, leftButtonZ, leftButtonZ); 
   
   fill(0);
   stroke(100);
   line(leftButtonX, leftButtonY -25, leftButtonX - 25, leftButtonY);
   line(leftButtonX - 25, leftButtonY, leftButtonX, leftButtonY + 25);
}

void upButton(float upButtonX, float upButtonY, float upButtonZ){
  if (mouseX > upButtonX && 
    mouseX < upButtonX + upButtonZ && 
    mouseY > upButtonY && 
    mouseY < upButtonY + upButtonZ)
    {
    //roatating a car to the right
    fill(200);
    } else {
    //moving a car forward  
    fill(255);
    }
   noStroke();
   rect(upButtonX, upButtonY, upButtonZ, upButtonZ);
   
   fill(0);
   stroke(100);
   line(upButtonX -25, upButtonY, upButtonX, upButtonY -25);
   line(upButtonX, upButtonY - 25, upButtonX + 25, upButtonY);
}

void downButton(float downButtonX, float downButtonY, float downButtonZ){
  if (mouseX > downButtonX && 
    mouseX < downButtonX + downButtonZ && 
    mouseY > downButtonY && 
    mouseY < downButtonY + downButtonZ)
    {
    //roatating a car to the right
    fill(200);
    } else {
    //moving a car forward 
    fill(255);
    }
   noStroke();
   rect(downButtonX, downButtonY, downButtonZ, downButtonZ);
   
   fill(0);
   stroke(100);
   line(downButtonX -25, downButtonY, downButtonX, downButtonY + 25);
   line(downButtonX, downButtonY + 25, downButtonX + 25, downButtonY);
}

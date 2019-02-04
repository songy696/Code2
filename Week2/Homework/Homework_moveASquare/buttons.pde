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
   line(rightButtonX + 33, rightButtonY + 10, rightButtonX + 55, rightButtonY + 32);
   line(rightButtonX + 55, rightButtonY + 32, rightButtonX + 33, rightButtonY + 55);
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
   line(leftButtonX + 33, leftButtonY + 10, leftButtonX + 10, leftButtonY + 32);
   line(leftButtonX + 10, leftButtonY + 32, leftButtonX + 33, leftButtonY + 55);
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
   line(upButtonX + 10, upButtonY + 32, upButtonX + 33, upButtonY + 10);
   line(upButtonX + 33, upButtonY + 10, upButtonX + 55, upButtonY + 32);
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
   line(downButtonX + 10, downButtonY + 32, downButtonX + 34, downButtonY + 55);
   line(downButtonX + 34, downButtonY + 55, downButtonX + 55, downButtonY + 32);
}

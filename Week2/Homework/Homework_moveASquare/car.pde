
void car(){
  noStroke();
  //car body
  fill(255, 0, 0);
  rect(xPos, yPos, 150, 70);
  //top part of the car
  fill(0);
  rect(xPos - 20, yPos, 70, 60);
  //glass part of the car
  fill(175, 238, 238);
  rect(xPos + 25, yPos, 20, 60);
  //headlights
  fill(255, 250, 205);
  ellipse(xPos + 65, yPos - 20, 10, 15);
  ellipse(xPos + 65, yPos + 20, 10, 15);
  //wheels
  fill(0);
  rect(xPos - 45, yPos - 40, 40, 10);
  rect(xPos -45, yPos + 40, 40, 10);
  rect(xPos + 30, yPos -40, 40, 10);
  rect(xPos + 30, yPos +40, 40, 10);
}

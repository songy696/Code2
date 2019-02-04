
void car(float xPos, float yPos){
  noStroke();
  //car body
  fill(255, 0, 0);
  rect(xPos, yPos, 150, 70);
  //top part of the car
  fill(0);
  rect(xPos + 20, yPos + 5, 70, 60);
  //glass part of the car
  fill(175, 238, 238);
  rect(xPos + 90, yPos + 5, 20, 60);
  //headlights
  fill(255, 250, 205);
  ellipse(xPos + 140, yPos + 15, 10, 15);
  ellipse(xPos + 140, yPos + 55, 10, 15);
  //wheels
  fill(0);
  rect(xPos + 10, yPos - 10, 40, 10);
  rect(xPos + 10, yPos + 70, 40, 10);
  rect(xPos + 80, yPos - 10, 40, 10);
  rect(xPos + 80, yPos + 70, 40, 10);
}


float xPosition, yPosition;
float dist;
float x, y;
float easing = 0.05;
float angle = 0;
float targetAngle = 0;

void setup(){
  size(600, 400);
  smooth();
}

void draw(){
  background(50,30,150);
  
  xPosition = mouseX;
  dist = xPosition - x;
  x += dist * easing;
  
  yPosition = mouseY;
  dist = yPosition - y;
  y += dist * easing;
  
  //rect(x, y, 40, 40);
  

  //targetAngle = (x - targetAngle);
  
  //rotate(targetAngle);
  
  rect(x, y, 40, 40);
}

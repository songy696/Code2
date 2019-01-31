float xPos, yPos;
float xDirec, yDirec;

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
}

void car(){
  rect(xPos, yPos, 140, 70);
}

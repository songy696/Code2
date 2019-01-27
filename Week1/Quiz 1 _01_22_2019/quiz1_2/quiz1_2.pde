float move;
float ampl;
float angle;

void setup() {
  size(600, 400);
  angle = 100;
  ampl = 200;
}

void draw() {
  background(0,255,0);
  
  angle = sin(radians(frameCount));
  move = width/2 + angle * ampl;
  
  fill(255);
  noStroke();
  ellipse(move, height/2, 25,25);
}

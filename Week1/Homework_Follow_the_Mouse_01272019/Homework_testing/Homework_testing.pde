float x,y;
float easing = 0.05;
float targetAngle = 0;
float angle = 0;
float dist;
float incr = 2;
float d;
float maxSize = 20;

PImage sheep;

void setup() {
  size(600,400);
  smooth();
  imageMode(CENTER);
  noStroke();
  fill(0);
  
  sheep = loadImage("Sheep.png");
}

void draw() {
  background(50,30,150);
  
  //character rotate to point
  //angle = atan2(mouseY, mouseX);
  //float dir = (angle - targetAngle) / TWO_PI;
  //dir -= round (dir);

  //rotate(dir);
  
  if (d > maxSize || d < 0){
    incr = -incr;
  }
  
  d +=incr;
  
  image(sheep, x,y,sheep.width/2 + d,sheep.height/2 + d);
  
  if(mousePressed){
    x = (1-easing) * x + easing * mouseX;
    y = (1-easing) * y + easing * mouseY;
  }else {
    //code that makes the character stationary
  }
  
}

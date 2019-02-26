PVector offset;
PVector centerPoint = new PVector(width/2, height/2);
float dist = 50;
int numObjects = 5;
float startOffsetAngles = 0;

void setup(){
  size(400, 400);
  colorMode(HSB, TWO_PI, 100, 100);
  noStroke();
  offset = new PVector(100,0);
}

void draw(){
  background(100);
  
  offset.rotate(radians(1));
  ellipse(200 + offset.x, 200 + offset.y, 60, 60);
  
  float offsets = radians(dist);
  ellipse(200  + offset.x, 200 + offset.y, 60, 60);
}

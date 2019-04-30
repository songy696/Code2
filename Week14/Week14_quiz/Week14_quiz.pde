// HSB Color Wheel

float angle = 35;
float dist = 100;
boolean add;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  colorMode(RGB);
  background(0, 25, 51);
  colorMode(HSB, 360, 100, 100);
  
  float x = cos( radians(angle)) * dist;
  float y = sin( radians(angle)) * dist;
  
  fill(0, 0, 100);
  ellipse(250, 250, 3, 3);
  
  fill(angle, 100, 100);
  ellipse(x + 250, y + 250, 30, 30);
  
  //fill(angle, 100, 100);
  //ellipse(x + 250 - cos( radians(angle)) * dist*2, y + 250 - sin( radians(angle)) * dist*2, 30, 30);
 
  angle += 1;
  angle %=360;
  if(angle < 0 ) angle += 360;
  
  if(add){
    fill(angle, 100, 100);
    ellipse(x + 250 - cos( radians(angle)) * dist*2, y + 250 - sin( radians(angle)) * dist*2, 30, 30);
  } 
}


void keyPressed(){
  if(key == 'n'){
    angle+= 3;
    add = true;
  }
  if(key == 'm'){
    angle--;
    add = false;
  }
}

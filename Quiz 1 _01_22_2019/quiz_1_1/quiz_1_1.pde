void setup(){
  size(600, 600);
}

float counter = 0;
void draw(){
  background(200);
  float s = sin(radians(frameCount))*100;
  
  counter += TWO_PI/300; // speed
  float x = height/2 + cos(counter*1) * cos(counter * 5) * 200;;

  
  ellipse(x, height/2, 25, 25);
}

float degrees = 50;
void setup(){
  size(400, 400);
}

void draw(){
  background(0);
  
  degrees += 1;
  fill(color(255,0,0));
  float x = cos( radians(degrees) ) * 100;
  float y = sin( radians(degrees) ) * 100;
  ellipse(200 + x, 200+ y, 60, 60);
  
  fill(color(0,255,0));
  float offset = radians(50);
  float x1 = cos( radians(degrees) + offset ) * 100;
  float y1 = sin( radians(degrees) + offset ) * 100;
  ellipse(200 + x1, 200 + y1, 60, 60);
  
  fill(color(0,0,255));
  float offset1 = radians(100);
  float x2 = cos( radians(degrees) + offset1 ) * 100;
  float y2 = sin( radians(degrees) + offset1 ) * 100;
  ellipse(200 + x2, 200 + y2, 60, 60);
  
  fill(color(255,0,255));
  float offset2 = radians(150);
  float x3 = cos( radians(degrees) + offset2 ) * 100;
  float y3 = sin( radians(degrees) + offset2 ) * 100;
  ellipse(200 + x3, 200 + y3, 60, 60);
  
  fill(color(255,0,255));
  float offset3 = radians(200);
  float x4 = cos( radians(degrees) + offset3 ) * 100;
  float y4 = sin( radians(degrees) + offset3 ) * 100;
  ellipse(200 + x4, 200 + y4, 60, 60);
  
  fill(color(0,255,255));
  float offset4 = radians(250);
  float x5 = cos( radians(degrees) + offset4 ) * 100;
  float y5 = sin( radians(degrees) + offset4 ) * 100;
  ellipse(200 + x5, 200 + y5, 60, 60);
  
  fill(color(255,255,0));
  float offset5 = radians(300);
  float x6 = cos( radians(degrees) + offset5 ) * 100;
  float y6 = sin( radians(degrees) + offset5 ) * 100;
  ellipse(200 + x6, 200 + y6, 60, 60);
}

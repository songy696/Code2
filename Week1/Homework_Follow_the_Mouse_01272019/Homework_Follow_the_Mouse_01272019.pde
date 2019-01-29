//gif image from: https://giphy.com/gifs/love-art-animation-l0HegFEAiFTit3ioM
//
int followSpeed = 16;
PVector[]follow = new PVector[followSpeed];

void setup(){
  size(600, 400);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  background(50,30,150);
  
  follow[followSpeed - 1] = new PVector(mouseX, mouseY);
  
  for (int i = 0; i < followSpeed - 1; i++){
    follow[i] = follow[i + 1];
  }
  
   if (follow[0] != null)
  {
    radians(90-atan2((250 - mouseY),( mouseX - 250)));
    rect(follow[0].x, follow[0].y, 40, 40);
    
  }
}

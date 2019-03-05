PVector pos, vel, acc;
float ballW = 60;
float ballH = 60;
PVector gravity  = new PVector(0, 0.2);
boolean isCaught = false;
float friction = 0.9;

void setup(){
  size(600, 600);
  noStroke();
  rectMode(CENTER);
  pos = new PVector(width/2, height - 30);
  vel = new PVector(0, 2.1);
  //acc = new PVector(0, 0);
}

void draw(){
  background(80, 140, 100);
  
  if(dist(mouseX, mouseY, pos.x, pos.y) <ballW/2){
    isCaught = true;
  }
  
  if((pos.x > width - ballW/2) || (pos.x < ballW/2)){
    vel.x *= -1 * friction;
  }
  if(pos.y > height - ballW/2){
    vel.y *= -0.95 * friction;
    pos.y = height - ballW/2;
  }
  
  if (mousePressed) {
    if ((mouseX > (pos.x - ballW/2) && mouseX < (pos.x + ballW/2)) &&
        (mouseY > (pos.y - ballW/2) && mouseY < (pos.y + ballW/2))) {
      vel.x = mouseX - pmouseX;
      vel.y = mouseY - pmouseY;
    }
  }
  
  fill(255, 120, 100);
  ellipse(pos.x, pos.y, ballW, ballH);
  pos.add(vel);
  //vel.add(acc);
  vel.add(gravity);
  
}

//float d = dist(mouseX, mouseY, pos.x, pos.y);

float xOffset = 0.0; 
float yOffset = 0.0;
void mouseDragged(){
  if(isCaught){
    pos.x = mouseX - xOffset;
    pos.y = mouseY - yOffset;
  }
}

//https://processing.org/examples/animatedsprite.html
Animation animation1, animation2;
float xPos;
float yPos;
float drag = 30.0;

void setup(){
  size(700, 600);
  background(255); 
  frameRate(24);
  animation1 = new Animation("Cat-Walking", 38);
  animation2 = new Animation("Cat-Sleeping", 60);
  yPos = height * 0.25;
}

void draw(){
  float dx = mouseX - xPos;
  xPos = xPos + dx/drag;

  // Display the sprite at the position xpos, ypos
  if (mousePressed) {
    background(153, 153, 0);
    animation1.display(xPos, yPos);
  } else {
    background(255, 204, 0);
    animation2.display(xPos, yPos);
  }
}

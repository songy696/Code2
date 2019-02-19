//https://processing.org/examples/mousefunctions.html
//https://processing.org/examples/simpleparticlesystem.html

//tried to drag the pink sqaure from the 2nd scene
// once the pink square is over the bigger square, it will generate the firework.

float xC, yC, xR, yR, xR1,yR1, xR2, yR2;
int sC, sR, sR1;

Buttons rButton;
Buttons cButton;
ParticleSystem ps;

boolean circleClicked, rectClicked;
boolean locked = false;
boolean overBox = false;

float d = dist(mouseX, mouseY, xC, yC);
color bgColor = color(220, 0, 220);

float xOffset = 0.0; 
float yOffset = 0.0; 

void setup(){
  size(800, 800);
  xC = width/4;
  yC = height/2;
  sC = 100;
  xR = width*3/4;
  yR = height /2;
  sR = 100;
  xR1 = width/2;
  yR1 = height /4;
  xR2 = width /2;
  yR2 = height*3/4;
  sR1 = 200;
  circleClicked = false;
  rectClicked = false;
  ps = new ParticleSystem(new PVector(width/2, height/2), random(RGB));
}

void draw(){
  background(100, 255,0);
  cButton = new Buttons(xC, yC, sC, 0,0,0 );
  cButton.display();
  
  if(circleClicked){
    rButton = new Buttons(0,0,0, xR, yR, sR);
    rButton.display();
  }
  
  if(rectClicked){
    background(0);
    fill(200, 20 ,200);
    rButton = new Buttons(0, 0, 0, xR1, yR1, sR);
    rButton.display();
    fill(220,100,120);
    rButton = new Buttons(0, 0, 0, xR2, yR2, sR1);
    rButton.display();
    //OverRect();
  }
   if(xR1 - sR/2 > xR2 - sR1/2 && 
     xR1 + sR/2 < xR2 + sR1/2 && 
     yR1 - sR/2 > yR2 - sR1/2 && 
     yR1 + sR/2 < yR2 + sR1/2){
       overBox = true;
       locked = true;
       //OverRect();
     }else {
       overBox = false;
       locked = false;
     }
}

void mouseClicked(){
  if(d < sC/2){
    circleClicked = true;
  }
  
  if(mouseX > xR - sR/2 && mouseX < xR + sR/2 &&
     mouseY > yR - sR/2 && mouseY < yR + sR/2){
       rectClicked = true;
     }
}

void OverRect(){
       background(bgColor);
       ps.addParticle();
       ps.run();
}

void mousePressed(){
  xOffset = mouseX - xR1;
  yOffset = mouseY - yR1;
}

void mouseDragged(){
  if(locked){
    xR1 = mouseX - xOffset;
    yR1 = mouseY - yOffset;
  }
}

void mouseReleased(){
  locked = false;
}

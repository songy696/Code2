//ArrayList<Buttons> cirlces = new ArrayList<Buttons>();
float xC, yC, xR, yR, xR1,yR1;
int sC, sR;
Buttons rButton;
Buttons cButton;
ParticleSystem ps;
boolean circleClicked, rectClicked;
float d = dist(mouseX, mouseY, xC, yC);
color bgColor = color(220, 0, 220);

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
    background(255,0,255);
    ps.addParticle();
    ps.run();
    
    rButton = new Buttons(0, 0, 0, xR1, yR1, sR);
    rButton.display();
  }
  
  OverRect();
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
  //if(mouseX > rectX && 
  //   mouseX < rectX + rectWidth && 
  //   mouseY > rectY && 
  //   mouseY < rectY+ rectHeight){
  //     bgColor = color(0, 200, 100);
  //   }else{
  //     bgColor = color(220, 20, 100);
  //   }
}

//ArrayList<Buttons> cirlces = new ArrayList<Buttons>();
//boolean circleClicked, rectClicked;
float xC, yC, xR, yR;
int sC, sR;
Buttons rButton;
Buttons cButton;
boolean circleClicked, rectClicked;
float d = dist(mouseX, mouseY, xC, yC);

void setup(){
  size(800, 800);
  xC = width/4;
  yC = height/2;
  sC = 50;
  xR = width*3/4;
  yR = height /2;
  sR = 50;
  circleClicked = false;
  rectClicked = false;
}

void draw(){
  
  cButton = new Buttons(xC, yC, sC, 0,0,0 );
  cButton.display();
  
  if(circleClicked){
  rButton = new Buttons(0,0,0, xR, yR, sR);
  rButton.display();
  }
}

void mouseClicked(){
  if(d){
    
  }
}

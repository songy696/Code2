class Buttons{
  float xCircle;
  float yCircle;
  int sizeCircle;
  float xRect;
  float yRect;
  int sizeRect;
  boolean circleClicked, rectClicked;
  
  
  Buttons(float xc, float yc, int sc, float xr, float yr, int sr){
    xCircle = xc;
    yCircle = yc;
    sizeCircle = sc;
    xRect = xr;
    yRect = yr;
    sizeRect = sr;
    
  }

  void display(){
    noStroke();
    ellipse(xCircle, yCircle, sizeCircle, sizeCircle);
    rectMode(CENTER);
    rect(xRect, yRect, sizeRect, sizeRect);
  }
  
  
}

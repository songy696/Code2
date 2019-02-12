class Buttons{
  float xPos, yPos;
  int sizes;
  color red;
  color green;
  color blue;
  color black;
  
  Buttons(float x, float y, int bSizes){
    xPos = x;
    yPos = y;
    sizes = bSizes;
    red = color(255, 0, 0);
    green = color(0, 255, 0);
    blue = color(0, 0, 255);
    black = color(0);
    click = 1; 
  }
  
  void display(){
    if(dist(mouseX, mouseY, xPos, yPos) < sizes/2){
      stroke(0);
    } else{
      stroke(255);
    }
    
     ellipse(xPos, yPos, sizes, sizes);
  }
  
  void pallete (){
    if (click == 1) {
      fill(red);
    }
    if (click == 2) {
      fill(green);
    }
    if (click == 3) {
      fill(blue);
    }
    if (click == 4) {
      fill(black);
    }
  }  
  
  boolean MouseIsOver(){
    if(dist(mouseX, mouseY, xPos, yPos) < sizes){
      return true;
    }
    return false;
  }
}

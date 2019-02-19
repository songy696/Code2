class Square{
  float xPos, yPos;
  float rectW;
  float rectH;
  
  Square(float x, float y, float w, float h){
    xPos = x;
    yPos = y;
    rectW = w;
    rectH = h;
  }
  
  void display(){
    if(mouseX > xPos && mouseY > xPos && mouseX < xPos +rectW && mouseY < yPos + rectH){
      stroke(0);
    } else {
      stroke(255);
    }
    
    rect(xPos, yPos, rectW, rectH);
  }
  
  boolean MouseIsOver(){
    if(mouseX > xPos && mouseY > xPos && mouseX < xPos + rectW && mouseY < yPos + rectH){
      return true;
    }
    return false;
  }
  
}

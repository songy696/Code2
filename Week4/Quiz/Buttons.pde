class Buttons{
  float xPos, yPos;
  int buttonSize;
  
  Buttons(float x, float y, int bSize){
    xPos = x;
    yPos = y;
    buttonSize = bSize;
  }
  
  void display(){
    noStroke();
    ellipse(xPos, yPos, buttonSize, buttonSize);
  }
  
  
}

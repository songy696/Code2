float lineX = 100;
float rectWidth = 40;
float rectX =150;
float rectY = 120;
float rectHeight = 60;
color bgColor = color (220, 100, 200);

boolean buttonIsClicked = false;

void setup(){
  size(300, 400);
}

void draw(){
  if(buttonIsClicked){
    bgColor = color(0, 100, 200);
  } else{
    bgColor = color(220, 100, 200);
  }
  
  background(bgColor);
  
  line(lineX, 0, lineX, height);
  
  //hitDetection();
  rect(rectX, 120, rectWidth, rectHeight);
}

void mouseClicked(){
  if(mouseX > rectX && 
     mouseX < rectX + rectWidth && 
     mouseY > rectY && 
     mouseY < rectY+ rectHeight){
       //if(buttonIsClicked) {
       // buttonIsClicked = false;
       //} else{
       //  buttonIsClicked = true;
       //}
       
       buttonIsClicked =  !buttonIsClicked;
     } 
   //println(buttonIsClicked);
}

void hitDetection(){
  if(mouseX > rectX && 
     mouseX < rectX + rectWidth && 
     mouseY > rectY && 
     mouseY < rectY+ rectHeight){
    bgColor = color(0, 100, 200);
  }else{
    bgColor = color(220, 100, 200);
  }
}

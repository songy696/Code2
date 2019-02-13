//float[] sizes = new float[10];
//ArrayList[] colors = new ArrayList[];

int arrayLength = 200;
Buttons[] b = new Buttons[arrayLength];

boolean locked = false;
int click;

float xOffset = 0; 
float yOffset = 0; 

float bx;
float by;

void setup(){
  size(600, 600);
  rectMode(CENTER);
  strokeWeight(2);
  
  click = 1;
  
   //bx = new Buttons(width/2, height/2, 100);
  
  for (int i = 0; i < arrayLength; i++){
    b[i] = new Buttons(i % 7*width/6, i/7 * height/6, int(random(50,100)));
  }
  
}

void draw(){
  background(40, 105, 255);
  
  for (int i = 0; i < arrayLength; i++){
    b[i].display();
  }
  
}

void mousePressed(){
  for (int i = 0; i < arrayLength; i++){
    if(b[i].MouseIsOver()){
      b[i].pallete();
      click++;
    } if(click == 5){
      click = 1;
    }
  }
  
  xOffset = mouseX - bx; 
  yOffset = mouseY - by; 
}

void mouseDragged() {
  if(locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}

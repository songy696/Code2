float[] sizes = new float[20];
//ArrayList[] colors = new ArrayList[];
int arrayLength = 40;
Buttons[] b = new Buttons[arrayLength];
boolean circleButtonClicked = false;

void setup(){
  size(600, 600);
  for (int i = 0; i < sizes.length; i++){
    sizes[i] = random(50, 100);
  }
  //b = new Buttons(width/2, height/2, 100);
  
  for (int i = 0; i < arrayLength; i++){
    b[i] = new Buttons(random(width), random(height), 100);
  }
}

void draw(){
  background(40, 105, 255);
  b.display();
}

//float[] sizes = new float[10];
//ArrayList[] colors = new ArrayList[];

int arrayLength = 200;
Buttons[] b = new Buttons[arrayLength];

boolean overButton = false;
int click;


void setup(){
  size(600, 600);
  rectMode(CENTER);
  strokeWeight(2);
  
  click = 1;
  
   //b = new Buttons(width/2, height/2, 100);
  //b = new Buttons(width/2, height/2, 100);
  
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

void mouseClicked(){
  for (int i = 0; i < arrayLength; i++){
    if(b[i].MouseIsOver()){
      b[i].pallete();
      click++;
    } if(click == 5){
      click = 1;
    }
  }
}

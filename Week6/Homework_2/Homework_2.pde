Animal animal;
Sleeping sleep;
Happy happy;
float xPos = 100;
float yPos = 300/2;
boolean go;
boolean hap;

    
void setup() {
  size(1000, 300);
  frameRate(4);
  imageMode(CENTER);
  
  animal = new Animal(xPos, yPos);
  sleep = new Sleeping(xPos, yPos);
  happy = new Happy(xPos, yPos);
  
  hap = false;
  go = false;
} 
 
void draw() { 
  background(70);
  
  if(go == true){
    animal.display();
    animal.update();
  } else if(hap){
    happy.display();
    happy.update();
  }else{
    sleep.display();
    sleep.update();
  }
  
 }
 
void keyTyped(){
  //if(key == CODED){
  //  if(key == 'd'){
  //    go = true;
  //  }
  //}
  
  switch(key){
    
  case 'd':
  animal.display();
  animal.update();
  go = true;
  break;
  }
}

void mouseClicked(){
  if(dist(mouseX, mouseY, xPos, yPos) < sleep.x){
    hap = !hap;
  }
}
 

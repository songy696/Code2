color[] c = new color[10];
color[] c2 = new color[10];
int inc=0;

void setup(){
  size(800,400);
  for(int i = 0; i < c.length; i++){
    c[i] = color(random(0, 255), random(0,255), random(0,255));
  }
  
  for(int i = 0; i < c2.length; i++){
    c2[i] = color(random(0, 255), random(0,255), random(0,255));
  }
}

void draw(){
  
    if(inc < 9){
    inc++;
  } else {
    inc = 0;
  }
  
  if(mousePressed & dist(mouseX, mouseY, 100, 100) <50){
    noStroke();
    fill(c[inc]);
    rect(width/4,height/2,400,400);
  } 
  
  if(mousePressed & mouseX > width*3/4 -50 && mouseY > height/2 - 50  && mouseX < width*3/4 + 50 && mouseY < height/2 + 50){
    noStroke();
    fill(c[inc]);
    rect(width*3/4,height/2,400,400);
  } 
  
  
  //noStroke();
  //fill(c[inc]);
  //rect(width/4,height/2,400,400);
  //noStroke();
  //fill(c2[inc]);
  //rect(width*3/4,height/2, 400,400);
  
  fill(255);
  ellipse(width/4, height/2, 100, 100);
  rectMode(CENTER);
  rect(width*3/4, height/2, 100, 100);
}

//void mousePressed(){
  
  //if(inc < 9){
  //  inc++;
  //} else {
  //  inc = 0;
  //}
//}


Cat c;

void setup() {
  size(1000, 300);
  c = new Cat();
  imageMode(CENTER);
}

void draw() {
  drawBackground();
  c.displayCharacter();
  c.update();
}
void drawBackground() {
  background(255);
  noStroke();
  //fill(#F3DCD4);
  fill(#ECC9C7);
  rect(0, 0, width, height);
  //fill(#D1CFC0);
  fill(#C2C2B4);
  rect(0, height*0.58, width, height);
  fill(#D9E3DA);
  rect(0, height*0.6, width, height);
  
  //fill(#C2C2B4);
  fill(#D1CFC0);
  for(int i = 0; i < width; i = i + 65){
    for(int j = 0; j < height; j = j + 25){
    rect(i, j + 200, width/16, height/15);
    }
  }
  
}

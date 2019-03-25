/*
  Animation source https://www.spriters-resource.com/playstation_2/unlimitedsaga/sheet/59358/
 Game: Unlimted Saga
 Character: Grace
 */
Cat c;

void setup() {
  size(1000, 350);
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
  // DRAW BACKGROUND
  noStroke();
  fill(#D28BED);
  rect(0, 0, width, height);
  fill(#9412C4);
  rect(0, height*0.55, width, height);
  
}

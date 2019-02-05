void road(){
  noFill();
  strokeWeight(180);
  pushMatrix();
  translate(0, height/2 - 50);
  rotate(radians(-50));
  beginShape();
vertex(0, 0); // first point
bezierVertex(125, 125, 500, 250, 250, 500);
bezierVertex(100, 650, 375, 700, 600, 600);
endShape();
popMatrix();
}

//if the car goes to the blue background, the player loose.....

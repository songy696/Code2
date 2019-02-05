color bgColor1, bgColor2;
int Y_AXIS;
ArrayList<Generator> generators;

void setup(){
  size(300, 600);
  bgColor1 = color(0, 0, 255);
  bgColor2 = color(0, 200, 255);
  generators = new ArrayList<Generator>();
}

void draw(){
  gradient(0, 0, width, height, bgColor1, bgColor2, Y_AXIS);
}

void gradient(int x, int y, float w, float h, color c1, color c2, int axis){
  if(axis == Y_AXIS){
    for(int i = y; i <= y + h; i++){
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
  
  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
  
  generators.add(new Generator(width, 0, random(RGB)));
  
}

class Particle{
  float posX, posY;
  float velX, velY;
  float life;
  float alpha;
  float colorChange;
  
  Particle(float posX, float posY){
    this.posX = random(0, width);
    this. posY = posY + random(-5, 5);
    this.velX = 0;
    this.velY = random(3, 10);
    life = 50;
    alpha = 255;
    colorChange = 255;
  }
  
  void display(){
    noStroke();
    fill(10, map(life, 50, 20, 70, 50), 200, map(life, 50, 0, 230, 0));
    ellipse(this.posX, this.posY, life,life);
  }
  
  void update(){
      alpha-=5;
    life--;
    colorChange = colorChange - 50;
    this.posX += this.velX;
    this.posY += this.velY;
  }
}

class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 
  float colors;

  Generator(float posX, float posY, float colors) {
    this.posX = posX;
    this.posY = posY;
    this.colors = colors;
    particles = new ArrayList<Particle>();
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
     
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
        particles.remove(i);
      }
    }
  }
}

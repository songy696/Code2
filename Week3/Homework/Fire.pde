class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  float colors;

  ParticleSystem(PVector position, float colors) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
    this.colors = colors;
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}


// A simple Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float colorChange;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-5, 5), random(-3, 3));
    position = l.copy();
    lifespan = 255;
    colorChange = 255;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
    colorChange = colorChange - 50;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, map(lifespan, 50, 20, 70, 230), 30, map(lifespan, 50, 0, 230, 0));
    ellipse(position.x, position.y, 15, 15);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

class Particle {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float angle;
  float aVelocity;
  float lifespan; 
  int s; //Each piece is a combination of 4 squares, s represents the side of these squares
  
  Particle(PVector location) {
    this.location = location.copy();
    this.acceleration = new PVector(random(-0.5,0.5),random(-0.5,0.5));
    this.velocity = new PVector(random(-0.75,0.75),random(-0.75,0.75));
    this.angle = 0;
    this.aVelocity = random(-0.1,0.1);
    this.lifespan = 512;
    this.s = 12;
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    angle += aVelocity;
    lifespan -= 2.0;
  }
  
  void display() {
    noStroke();
    fill(175, lifespan);
    circle(location.x, location.y,8);
  }

  void run() {
    update();
    display();
  }
  
  boolean isDead() {
    return lifespan < 0.0;
  }
}

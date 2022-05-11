class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  color trace;
  color[] palette = {#ff3c00, #ff7600, #ff6701,#d4650f}; 
  
  Mover() {
    mass = 1;
    location = new PVector(210,250);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    trace = palette[(int) random(palette.length)];
  }
  
  Mover(float mass, float x, float y) {
    this.mass = mass;
    this.location = new PVector(x,y);
    this.velocity = new PVector(1,0);
    this.acceleration = new PVector(0,0);
    trace = palette[(int) random(palette.length)];
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void update() {   
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    noStroke();
    fill(trace);
    ellipse(location.x, location.y, mass*2, mass*2);
  }
}

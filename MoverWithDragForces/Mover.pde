class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float mass, int x, int y) {
    this.mass = mass;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    fill(99);
    circle(location.x, location.y, mass*16);
  }

  void checkEdges() {
    if (location.y > height) {
      velocity.y *= -0.8;
      location.y = height;
    }
  }

  boolean isInside(Liquid l) {
    return (location.x>l.x && 
      location.x<l.x+l.w && 
      location.y>l.y && 
      location.y<l.y+l.h);
  }
}

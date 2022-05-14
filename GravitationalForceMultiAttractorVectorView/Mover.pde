class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  int shade;
  
  Mover() {
    mass = 1;
    location = new PVector(210,250);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
  }
  
  Mover(float mass, float x, float y, int shade) {
    this.mass = mass;
    this.location = new PVector(x,y);
    this.velocity = new PVector(1,0);
    this.acceleration = new PVector(0,0);
    this.shade = shade;
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
  
  void drawDistanceVector(Attractor a) {
    stroke(222);
    strokeWeight(1);
    line(location.x, location.y, a.location.x, a.location.y);
  }
  
  void drawResultantForce() {
    PVector scaledAcceleration = PVector.mult(acceleration,1000).limit(200);
    PVector truePos = PVector.add(location,scaledAcceleration);
    stroke(255,0,0);
    strokeWeight(2);
    line(location.x,location.y,truePos.x,truePos.y);
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(location.x, location.y, mass*4, mass*4);
  }
  
  void checkEdges() {
    if (location.x > width){
      location.x = width;
      velocity.x *= -1;
    }
    if (location.x < 0){
      location.x = 0;
      velocity.x *= -1;
    }
    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
  }
}

class Particle {
  PVector location;
  PVector velocity;
  float size;
  
  Particle(float x, float y) {
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    size = 8.0;
  }
  
  void update() {
    location.add(velocity);
    bounce();
  }
  
  void display() {
    circle(location.x, location.y, size);
  }
  
  void teleport(Vehicle v) {
    PVector delta = PVector.sub(location, v.location);
    
    if(delta.mag() < 10) {
      location.x = int(random(640));
      location.y = int(random(640));
    }
  }
  
  void bounce() {
    if(location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if(location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if(location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
    if(location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
}

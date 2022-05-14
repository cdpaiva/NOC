class Attractor {
  float mass;
  PVector location;
  float G;
  boolean dragging = false;
  boolean rollover = false;
  PVector dragOffset;

  Attractor(float x, float y) {
    location = new PVector(x, y);
    mass = 20;
    G = 0.4;
    dragOffset = new PVector(0, 0);
  }

  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    //distance value is contrained to avoid to high forces when the distance gets too low
    //likewise, too great distances would imply in no forces in the system
    distance = constrain(distance, 5.0, 30.0);

    float strength = G * mass * m.mass / (distance * distance);

    force.normalize();
    force.mult(strength);
    return force;
  }

  void display() {
    stroke(255);
    if(dragging){
      noStroke();
    };
    fill(33);
    circle(location.x, location.y, mass*2);
  }

  void clicked(int mx, int my) {
    float d = dist(mx, my, location.x, location.y);
    if (d < mass) {
      dragging = true;
      dragOffset.x = location.x-mx;
      dragOffset.y = location.y-my;
    }
  }

  void hover(int mx, int my) {
    float d = dist(mx, my, location.x, location.y);
    if (d < mass) {
      rollover = true;
    } else {
      rollover = false;
    }
  }

  void stopDragging() {
    dragging = false;
  }

  void drag() {
    if (dragging) {
      location.x = mouseX + dragOffset.x;
      location.y = mouseY + dragOffset.y;
    }
  }
}

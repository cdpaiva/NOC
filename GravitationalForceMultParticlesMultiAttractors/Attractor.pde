class Attractor {
  float mass;
  PVector location;
  float G;
  
  Attractor(int x, int y) {
    location = new PVector(x, y);
    mass = 40;
    G = 4;
  }
  
  PVector attract(Mover m) {
    PVector force = PVector.sub(location,m.location);
    float distance = force.mag();
    //distance value is contrained to avoid to high forces when the distance gets too low
    //likewise, too great distances would imply in no forces in the system
    distance = constrain(distance, 5.0, 50.0);
    
    float strength = G * mass * m.mass / (distance * distance);
    
    force.normalize();
    force.mult(strength);
    return force;
  }
  
  void display() {
    noStroke();
    fill(#edf723);
    circle(location.x, location.y, mass/2);
  }
  
}

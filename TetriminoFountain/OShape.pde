class OShape extends Particle {

  OShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();
    fill(color(#FFD500));
    pushMatrix();
    translate(location.x, location.y);
    rectMode(CENTER);
    rotate(angle);
    rect(0,0, 2*s, 2*s);
    popMatrix();
  }
}

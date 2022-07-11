class IShape extends Particle {

  IShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();  
    fill(color(#2BACE2));
    pushMatrix();
    translate(location.x + s/2, location.y + 2*s);
    rotate(angle);
    rectMode(CENTER);
    rect(0,0,s,4*s);
    popMatrix();
  }
}

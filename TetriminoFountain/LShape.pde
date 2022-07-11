class LShape extends Particle {

  LShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();
    fill(color(#FF971C));
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    beginShape();
    vertex(-s,-1.5*s);
    vertex(-s,1.5*s);
    vertex(s,1.5*s);
    vertex(s,0.5*s);
    vertex(0,0.5*s);
    vertex(0,-1.5*s);
    endShape(CLOSE);
    popMatrix();
  }
}

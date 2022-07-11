class SShape extends Particle {

  SShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();
    fill(color(#4EB748));
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    beginShape();
    vertex(-1.5*s,0);
    vertex(-1.5*s,s);
    vertex(0.5*s,s);
    vertex(0.5*s,0);
    vertex(1.5*s,0);
    vertex(1.5*s,-s);
    vertex(-0.5*s,-s);
    vertex(-0.5*s,0);
    endShape(CLOSE);
    popMatrix();
  }
}

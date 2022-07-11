class ZShape extends Particle {

  ZShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();
    fill(color(#FF3213));
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    beginShape();
    vertex(-1.5*s,0);
    vertex(-0.5*s,0);
    vertex(-0.5*s,s);
    vertex(1.5*s,s);
    vertex(1.5*s,0);
    vertex(0.5*s,0);
    vertex(0.5*s,-s);
    vertex(-1.5*s,-s);
    endShape(CLOSE);
    popMatrix();
  }
}

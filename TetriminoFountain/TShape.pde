class TShape extends Particle {

  TShape(PVector pos){
    super(pos);
  }
  
  void display() {
    noStroke();
    fill(color(#CE3CAE));
    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    beginShape();
    vertex(-1.5*s,0);
    vertex(-1.5*s,s);
    vertex(1.5*s,s);
    vertex(1.5*s,0);
    vertex(0.5*s,0);
    vertex(0.5*s,-s);
    vertex(-0.5*s,-s);
    vertex(-0.5*s,0);
    endShape(CLOSE);
    popMatrix();
  }
}

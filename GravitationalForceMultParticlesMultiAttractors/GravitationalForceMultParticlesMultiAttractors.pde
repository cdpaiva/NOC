Mover[] movers = new Mover[20];
Attractor a1;
Attractor a2;
Repeller r;

void setup() {
  size(640, 640);
  background(11);
  for (int i=0; i<movers.length; i++) {
    movers[i] = new Mover(random(0.5, 1), random(width/4,3*width/4), random(height/4,3*height/4));
  }
  a1 = new Attractor(160,320);
  a2 = new Attractor(480,320);
  r = new Repeller(320,320);
}

void draw() {
  //background(255);
  for (Mover m : movers) {
    m.applyForce(a1.attract(m));
    m.applyForce(a2.attract(m));
    m.applyForce(r.repell(m));
    m.update();
    m.display();
  }
  a1.display();
  a2.display();
  r.display();
}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

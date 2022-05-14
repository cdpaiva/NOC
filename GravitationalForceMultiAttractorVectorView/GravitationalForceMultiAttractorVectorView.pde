Mover[] movers = new Mover[3];
Attractor[] attractors = new Attractor[5];

void setup() {
  size(640, 640);
  background(33);
  for (int i=0; i<movers.length; i++) {
    movers[i] = new Mover(random(0.5, 1), random(width), random(height), 222);
  }
  for(int i = 0; i<attractors.length;i++){
    attractors[i] = new Attractor(random(width), random(height));
  }
}

void draw() {
  background(33);
  for(Attractor a: attractors){
      a.display();
  a.drag();
  a.hover(mouseX,mouseY);  
  }

  for (Mover m : movers) {
    for(Attractor a: attractors){
    m.applyForce(a.attract(m));
    }
    m.drawResultantForce();
    m.update();

    m.display();
    m.checkEdges();
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

void mousePressed() {
  for(Attractor a: attractors){
    a.clicked(mouseX, mouseY);
  }
}

void mouseReleased() {
  for(Attractor a: attractors){
    a.stopDragging();
  }
}

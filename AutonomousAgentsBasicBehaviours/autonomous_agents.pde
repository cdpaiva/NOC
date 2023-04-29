Vehicle v;

void setup() {
  size(640,640);
  v = new Vehicle(320,320);
}

void draw() {
  background(33);

  stroke(255);
  fill(188);
  
  // Seeks the mouse pointer
  PVector target = new PVector(mouseX, mouseY);
  v.update();
  v.seek(target);
  v.display();
}

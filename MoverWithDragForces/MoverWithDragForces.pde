Mover[] movers = new Mover[6];
Liquid lowViscLiquid;
Liquid highViscLiquid;

void setup() {
  size(640, 640);
  for (int i = 0; i< movers.length; i++) {
    movers[i] = new Mover(1+i%3, 40+ i*100, 0);
  }
  lowViscLiquid = new Liquid(0, height/2, width/2, height/2, 0.02, 172);
  highViscLiquid = new Liquid(width/2, height/2, width/2, height/2, 0.1, 122);
}

void draw() {
  background(255);

  lowViscLiquid.display();
  highViscLiquid.display();

  for (int i = 0; i< movers.length; i++) {

    PVector gravity = new PVector(0, 0.1*movers[i].mass);

    if (movers[i].isInside(lowViscLiquid)) {
      PVector dragForce = lowViscLiquid.drag(movers[i]);
      movers[i].applyForce(dragForce);
    }

    if (movers[i].isInside(highViscLiquid)) {
      PVector dragForce = highViscLiquid.drag(movers[i]);
      movers[i].applyForce(dragForce);
    }

    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }

  fill(0);
  text("Low viscosity", 10, 340);
  text("High viscosity", 340, 340);
}

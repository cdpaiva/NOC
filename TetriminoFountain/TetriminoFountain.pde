import java.util.Iterator;

ParticleSystem ps;

void setup() {
  size(600,600);
  ps = new ParticleSystem(new PVector(300,300));
}

void draw() {
  background(33);

  ps.addParticle();
  ps.run();
}

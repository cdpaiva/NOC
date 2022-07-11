class ParticleSystem {

  ArrayList<Particle> particles;
  PVector origin;
  
  ParticleSystem(PVector origin) {
    this.origin = origin.copy();
    this.particles = new ArrayList<Particle>();
  }
  
  void addParticle() {
    int r = int(random(12)); //r indirectly regulates the generation rate of new particles
    switch(r){
      case 0:
        particles.add(new IShape(origin));
        break;
      case 1:
        particles.add(new JShape(origin));
        break;
      case 2:
        particles.add(new LShape(origin));
        break;
      case 3:
        particles.add(new OShape(origin));
        break;
      case 4:
        particles.add(new ZShape(origin));
        break;
      case 5:
        particles.add(new TShape(origin));
        break;
      case 6:
        particles.add(new SShape(origin));
        break;
    }
  }
  
  void addParticle(PVector pos) {
    particles.add(new Particle(pos));
  }
  
  void run() {
    Iterator<Particle> it = particles.iterator();
  
    while (it.hasNext()) {
      Particle p = it.next();
      p.run();
      if (p.isDead()) {
        it.remove();
      }
    }
  }
}

class Dot {

  PVector location, speed;
  int size;
  int connectingLineMaxLength = 200;
  
  Dot(int x, int y, int size) {
    this.location = new PVector(x,y);
    this.size = size;
    this.speed = new PVector(random(2)+0.5,random(2)+0.5);
  }
  
  void display() {
    noStroke();
    fill(#0000FF);
    circle(location.x,location.y,size);
  }
  
  void connect(Dot d2) {
    PVector dist = PVector.sub(this.location,d2.location);
    if(!d2.equals(this) && dist.mag() < connectingLineMaxLength) {
      stroke(#0000FF);
      line(this.location.x, this.location.y, d2.location.x, d2.location.y);
    }
  }
  
  void update() {
    this.checkEdges();
    this.location.add(this.speed);
  }
  
  void checkEdges() {
    if(this.location.x < 0 || this.location.x > width) {
      this.speed.x *= -1;
    }
    if(this.location.y < 0 || this.location.y > height) {
      this.speed.y *= -1;
    }
  }
}

class Liquid {
  float x, y, w, h;
  float c;
  int liquidColor;

  Liquid(float x, float y, float w, float h, float c, int liquidColor) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.liquidColor = liquidColor;
  }

  PVector drag(Mover m) {
    float speed = m.velocity.mag();
    float dragMagnitude = c * speed * speed;

    PVector dragForce = m.velocity.copy();
    dragForce.mult(-1);
    dragForce.normalize();
    dragForce.mult(dragMagnitude);
    return dragForce;
  }

  void display() {
    noStroke();
    fill(liquidColor, liquidColor, 222);
    rect(x, y, w, h);
  }
}

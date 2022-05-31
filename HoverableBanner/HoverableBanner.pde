int numOfDots = 30;
int dotSize = 10;
ArrayList<Dot> dots = new ArrayList<Dot>();
boolean toogleText = false;

//How about if connecting lines only showed up when the mouse is close to a dot?

void setup() {
  size(900, 500);
  PFont font;
  font = createFont("Liberation Sans Bold", 48);
  textFont(font);
  textAlign(RIGHT);

  dots.add(new Dot(780, 244, 12));
}

void draw() {
  background(43);

  for (Dot d : dots) {
    d.display();
    if (mouseHover()) {
      d.update();
      for (Dot d2 : dots) {
        d.connect(d2);
      }
    }
  }
  if (mouseHover()) { 
    int adjustableDelay = (numOfDots - dots.size())*3 + 1;
    println(adjustableDelay);
    if (frameCount%adjustableDelay==0) {
      addDot();
    }
    fill(#0000FF);
    text("CONNECTED", 430, 250);
  } else {
    fill(255);
    text("CREATIVE", 430, 250);
    if (dots.size()==1) {
      circle(780, 244, 12);
    }
  }
  fill(255);
  text("PRODUCTION", 770, 250);
}

void addDot() {
  if (dots.size()<numOfDots) {
    Dot newDot = new Dot(
      randint(width), 
      randint(height), 
      randint(5, dotSize)*2
      );
    dots.add(newDot);
  }
}

void removeDot() {
  if (!dots.isEmpty()) {
    dots.remove(0);
  }
}

void keyPressed() {
  if (keyCode==32) { 
    dots.clear();
    dots.add(new Dot(780, 244, 12));
  }
}

//Checks if mouse is inside the coordinates of "CREATIVE"
boolean mouseHover() {
  return mouseX > 100 && mouseX < 430 && mouseY > 200 && mouseY < 270;
}

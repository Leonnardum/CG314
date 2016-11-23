import processing.video.*;
Movie continued;
PImage tv;

void setup() {
  size(1280, 720);
  continued = new Movie(this, "Continued_LQ.mp4");
  tv = loadImage("LCD.png");
}

void draw() {
  image(tv, 0, 0);
  if (keyPressed) {
    if (key == '2') {
      image(continued, 0, 0);
      continued.play();
      image(tv, 0, 0);
    }
  }
}
void movieEvent (Movie continued) {

  continued.read();
}  
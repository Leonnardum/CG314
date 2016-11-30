float x, y, z;
float rotation=PI/48;

void setup() {
  size(800, 600, P3D);
  x=width/2;
  y=height/2;
  z=0;
}

void draw() {
  background(0);
  translate(mouseX, mouseY, z);
  noFill();
  rotateX(rotation/2);
  stroke(255, 0, 0);
  sphere(100);
  stroke(0, 255, 0);
   rotateX(rotation/2);
   rotateY(rotation/4);
  sphere(150);
  stroke(0, 100, 100);
  sphere(250);
  if (keyPressed) {
    if (key == 's') {
      z+=10;
    }
    if (keyPressed) {
      if (key == 'w') {
        z-=10;
      }
    }

    rotation+= PI/48;
  }
}
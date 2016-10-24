Clocks clock1;

void setup() {
  size(1280, 720);
  clock1 = new Clocks(width/2, height/2, 100, color(200, 200, 100));
}

void draw() {
  background(0);
  if (keyPressed) {
    
    clock1.hover();
  }
  clock1.display();
}
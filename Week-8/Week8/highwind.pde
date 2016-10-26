class Highwind {
  float x;
  float y;
  float size;
  color theColor;
  
  Highwind(float tempX, float tempY, float tempSize, color tempColor){
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }
  void move() {
    x+=22;
    
    if(x > width+size){
      x = -size;
    }
  }
  void hover() {
    x+=random(-1,70);
    y+=random(-10,10);
  }
  void display() {
  background(0);
  fill(theColor);
  rectMode(CENTER);
  //triangle(x, y, x+size/2, y+size/4, x+size, y);
  //triangle(x-1, y-150, x+size/2, y+size/4, x+size, y);
  
  for(int i=0; i<size; i++){
    stroke(random(mouseX, mouseY), random(mouseX, mouseX), random(mouseY, mouseX));
    noFill();
    strokeWeight(10);
    triangle(random(0,1280), random(0,720), 0, 0, 1280, 720);
    
  }
 }
}
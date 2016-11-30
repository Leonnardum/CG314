float x, y, z;
float rotation=PI/48;
float rotationy ;
float rotationx ;
float speed=10;

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
  rotateY(rotation/2);
  stroke(255, 0, 0);
  sphere(100);
  stroke(0, 255, 0);
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
rotateX(rotation/2);
    rotation+= PI/48;
  }
pushMatrix();
  translate(x, y, z);
  noFill();
    rotateY(rotationy);
    rotationy++;
     rotateX(rotationx);
    rotationx=0;
  stroke(255);
sphereDetail(25);
  sphere(255);

  if(keyPressed){
 
      if (keyCode==LEFT){
   rotationx+=1; 
    
  }
    
  
  if (keyCode==UP){
   rotationy+=10; 
    
  }
  
  }
  popMatrix();



}
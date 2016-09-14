void setup() {
  size(600, 600);
  background(39, 138, 222);
}

int pineal;
pineal = 25;

void draw () {

  //head
  noStroke();
  fill(206, 158, 12);
  rect(150, 150, 250, 250);

  fill(255, 198, 24);
  rect(165, 165, 220, 220);
  
  fill(240,113,113);
  rect(250,350,50,15);

  
  //body
  fill(206,158,12);
  rect(150,425,250,250);
  fill(255,198,24);
  rect(165,445,220,220);

  fill(0);
  ellipse(200, 300, 30, 30);
  ellipse(350, 300, 30, 30);
  
    //heart
  fill(255,198,24);
  rect(350, 70, 25, 80);
  fill(255);
  ellipse(255, 440, 50, 50);
  ellipse(295, 440, 50, 50);
  
  //pineal gland
  fill(3,193,255);
  triangle(225, 205, 325, 205, 275, 275);
    fill(3,170,255);
    triangle(235,210,315,210,275,265);
 }
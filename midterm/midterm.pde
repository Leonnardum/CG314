PImage couchPhoto, finger, remote, headRoom, head_surprised, head_scared, head_bored, monitor, button, fingerPressed, tortellini, getthem, getthem2;
float textX = 700;
float textY = 100;
float head = 150;
float headX = 585;
float headY = 10;
float rectX;
float rectY;
float x = 410;
float y = 115;
float timer = 10000;
import ddf.minim.*;
Minim minim;

AudioPlayer legalcara;
AudioPlayer mortyjr;
AudioPlayer epicsaxguy;
AudioPlayer huehue;
AudioPlayer yess;
AudioPlayer titan;
AudioPlayer beep;
AudioPlayer munch;
void setup () {
  size(1280, 720);

  minim = new Minim(this);

  munch =minim.loadFile("munch.mp3");
  beep = minim.loadFile("beep.mp3");
  huehue = minim.loadFile("huehue.mp3");
  yess = minim.loadFile("yess.mp3");
  epicsaxguy = minim.loadFile("epicsaxguy.mp3");
  mortyjr = minim.loadFile("mortyjr.mp3");
  legalcara = minim.loadFile("legalcara.mp3");
  titan = minim.loadFile("titan.mp3");


  getthem2 = loadImage("getthem2.png");
  getthem = loadImage("getthem.png");
  tortellini = loadImage("tortellini.png");
  couchPhoto = loadImage("sitting.jpg");
  headRoom = loadImage("head_room.png");   
  monitor = loadImage("screen.png");
  finger = loadImage("finger.png");
  remote = loadImage("remote.png");
  head_surprised = loadImage("head_room_surprised.png");
  head_scared = loadImage("head_room_scared.png");
  head_bored = loadImage("head_room_bored.png");
  button = loadImage("buttonPressed.png");
  fingerPressed = loadImage("fingerPressed.png");
}


void draw() {
  image(couchPhoto, 0, 0); 
  image(headRoom, headX, headY);
  image(remote, 0, 0);

  noStroke();
  if (mouseX>95 && mouseX<129 && mouseY>324 && mouseY<358 && mousePressed) {
    huehue.pause();
    yess.pause();
    titan.pause();
    epicsaxguy.pause();
    mortyjr.pause();
    legalcara.play();
    image(button, 94, 323);
    image(head_surprised, headX, headY);
    fill(0, 200, 0, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else if (mouseX>144 && mouseX<178 && mouseY>324 && mouseY<358 && mousePressed) {
    yess.pause();
    epicsaxguy.pause();
    titan.pause();
    legalcara.pause();
    mortyjr.play();
    huehue.pause();
    image(button, 143, 323);
    image(head_bored, headX, headY);
    fill(100, 200, 0, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else if (mouseX>95 && mouseX<129 && mouseY>370 && mouseY<404 && mousePressed) {
    mortyjr.pause();
    epicsaxguy.pause();
    titan.pause();
    legalcara.pause();
    yess.pause();
    huehue.pause();
    titan.play();

    image(button, 94, 369);
    fill(200, 100, 0, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else if (mouseX>95 && mouseX<129 && mouseY>415 && mouseY<449 && mousePressed ) {
    mortyjr.pause();
    legalcara.pause();
    yess.pause();
    huehue.pause();
    titan.pause();
    epicsaxguy.play();


    image(button, 94, 414);
    fill(100, 0, 200, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else if (mouseX>144 && mouseX<178 && mouseY>370 && mouseY<404 && mousePressed) {
    mortyjr.pause();
    legalcara.pause();
    titan.pause();
    epicsaxguy.pause();
    yess.pause();
    huehue.play();

    image(button, 143, 369);
    image(head_scared, headX, headY);
    fill(100, 200, 200, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else if (mouseX>144 && mouseX<178 && mouseY>415 && mouseY<449 && mousePressed) {
    mortyjr.pause();
    legalcara.pause();
    titan.pause();
    epicsaxguy.pause();
    huehue.pause();
    yess.play();
    image(button, 143, 414);
    fill(255, 200, 255, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  } else {
    fill(255, 255, 255, 80);
    beginShape();
    vertex(173, 0);
    vertex(419, 580);
    vertex(856, 592);
    vertex(1110, 0);
    endShape();
  }

  if (mouseX>55 && mouseX<233 && mouseY>287 && mouseY<664) {
    if (mousePressed && mouseX>95 && mouseX<178 && mouseY>324 && mouseY<449) {
      image(fingerPressed, mouseX-60, mouseY);
    } else {
      image(finger, mouseX-40, mouseY);
    }
  }

  image(monitor, 0, 0);

  if (millis()>timer) {
     mortyjr.pause();
    legalcara.pause();
    titan.pause();
    epicsaxguy.pause();
    huehue.pause();
    yess.pause();
    beep.play();
    fill(216, 215, 190);
    rect(0, 0, 1280, 720);
    image(head_surprised, 60, 100, 400, 500);
    if (millis()>timer+500) {
      strokeWeight(1);
      stroke(0);
      noFill();
      arc(x, y, 100, 100, radians(280), radians(350));
      arc(x, y, 100, 100, radians(10), radians(80));
      arc(x, y, 100, 100, radians(100), radians(170));
      arc(x, y, 100, 100, radians(190), radians(260));
      noStroke();
    }
  }
  if (millis()>timer+1000) {
    fill(216, 215, 190);
    rect(0, 0, 1280, 720);
    image(head_surprised, 60, 100, 400, 500);
    stroke(0);
    noFill();
    arc(x, y, 200, 200, radians(280), radians(350));
    arc(x, y, 200, 200, radians(10), radians(80));
    arc(x, y, 200, 200, radians(100), radians(170));
    arc(x, y, 200, 200, radians(190), radians(260));
    noStroke();
  }
  if (millis()>timer+1500) {
    fill(216, 215, 190);
    rect(0, 0, 1280, 720);
    image(head_surprised, 60, 100, 400, 500);
    stroke(0);
    noFill();
    arc(x, y, 300, 300, radians(280), radians(350));
    arc(x, y, 300, 300, radians(10), radians(80));
    arc(x, y, 300, 300, radians(100), radians(170));
    arc(x, y, 300, 300, radians(190), radians(260));
    noStroke();
  }
  if (millis()>timer+2000) {
    fill(216, 215, 190);
    rect(0, 0, 1280, 720);
    image(head_surprised, 60, 100, 400, 500);
    stroke(0);
    noFill();
    arc(x, y, 100, 100, radians(280), radians(350));
    arc(x, y, 100, 100, radians(10), radians(80));
    arc(x, y, 100, 100, radians(100), radians(170));
    arc(x, y, 100, 100, radians(190), radians(260));
    noStroke();
  }
  if (millis()>timer+2500) {
    stroke(0);
    noFill();
    arc(x, y, 200, 200, radians(280), radians(350));
    arc(x, y, 200, 200, radians(10), radians(80));
    arc(x, y, 200, 200, radians(100), radians(170));
    arc(x, y, 200, 200, radians(190), radians(260));
    noStroke();
  }
  if (millis()>timer+3000) {
    stroke(0);
    noFill();
    arc(x, y, 300, 300, radians(280), radians(350));
    arc(x, y, 300, 300, radians(10), radians(80));
    arc(x, y, 300, 300, radians(100), radians(170));
    arc(x, y, 300, 300, radians(190), radians(260));
    noStroke();
  }
  if (millis()>timer+3000) {
    image(tortellini, 0, 0);
  }
  if (millis()>timer+5000) {
    image(getthem, 0, 0);
  }
  if (keyPressed){
      mortyjr.pause();
    legalcara.pause();
    titan.pause();
    epicsaxguy.pause();
    huehue.pause();
    yess.pause();  
    munch.play();
      fill(0);
      rect(0,0,1280,720);
      munch.play();
    }
  }
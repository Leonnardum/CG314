/*Leonard Roitburd's short first quick time event!
Arrows indicate which button to press to advance the scene
Up is W, right is D, left is A, quick-time event is X.

Unfortunately I still can't wrap my head around making
each video play on a tap of a button rather than having
it held pressed down, so in order to get the full experience,
hold W, D, A and X (hold X at the end for victory message)
at the right moment for a fluid run. */


PImage tun1, tun2, arrow, arrow2, zombie;
float value = 0;

import ddf.minim.*;
Minim minim;

import processing.video.*;
Movie tun1vid;
Movie tun2vid;
Movie tun3vid;
Movie tun4vid;

void setup() {
  size(640, 480);
  arrow = loadImage("arrow.png");
  arrow2 = loadImage("arrow2.png");
  tun1 = loadImage("Tunnel1pic.jpg");
  tun2 = loadImage("Tunnel2pic.jpg");
  tun1vid = new Movie(this, "Tunnel1vid.mp4");
  tun2vid = new Movie(this, "Tunnel2vid.mp4");
  tun3vid = new Movie(this, "Tunnel3vid.mp4");
  tun4vid = new Movie(this, "Tunnel4vid.mp4");
  image(tun1, 0, 0);
  image(arrow, 0, 0);
}

void draw() {
  if (keyPressed) {
    if (key == 'w') {
      Scene1Play();
    } else    if (key == 'd') {
      Scene2Play();
    } else if (key == 'a') {
      Scene3Play();
    } else if (key == 'x'){
      Scene4Play();
  }
}
}



void Scene1Play() {
  image(tun1vid, 0, 0);
  tun1vid.play();
}






void Scene2Play() {
  image(tun2vid, 0, 0);
  tun2vid.play();
}

void Scene3Play() {
  image(tun3vid, 0, 0);
  tun3vid.play();
}

void Scene4Play(){
  image(tun4vid,0,0);
  tun4vid.play();
}


void movieEvent(Movie m) {
  if (m == tun1vid) {
    tun1vid.read();
  } else if (m == tun2vid) {
    tun2vid.read();
  } else if (m == tun3vid) {
    tun3vid.read();
  } else if (m == tun4vid){
    tun4vid.read();
}
}

void mouseClicked() {
  image(tun1vid, 0, 0);
  tun1vid.play();
}
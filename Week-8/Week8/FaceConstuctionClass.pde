//Will Seacy
//FACE

class Facial {
  float x; //center x
  float y; //center y
  float w; //head width
  float h; //head height
  float ey;//eyebrow height
  float m; //eyebrow movement speed

  Facial(float tempX, float tempY, float tempW, float tempH, 
    float tempEY, float tempM) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    ey = tempEY;
    m = tempM;
  }


  void display() {
    noStroke();
    fill(100, 75, 10);               //hair color
    ellipse(x, y-y/4, w+w/8, h);     //hairs
    fill(255, 227, 185);             //skin color
    ellipse(x-w/2, y, w/4, h/4);     //left ear
    ellipse(x+w/2, y, w/4, h/4);     //right ear
    ellipse(x, y, w, h);             //faceshape
    fill(100, 75, 10);                //mustache color
    beginShape();                    //start mustache
    vertex(x+x/43, y+y/8);
    vertex(x-x/43, y+y/8);
    vertex(x-x/6.5, y+y/3.5);
    vertex(x+x/6.5, y+y/3.5);
    endShape(CLOSE);                 //end mustache
    fill(237, 198, 139);             //nose color
    beginShape();                    //start nose bridge
    vertex(x-x/43, y-y/8);
    vertex(x+x/43, y-y/8);
    vertex(x+x/21, y+y/8);
    vertex(x-x/21, y+y/8);
    endShape(CLOSE);            //end nose bridge
    ellipse(x, y+y/8, w/3, h/8);//nose bottom
    stroke(0);
    strokeWeight(7);
    line(x-w/8, y+h/3.45, x+w/8, y+h/3.45);  //mouthupper
    strokeWeight(5);
    line(x-w/20, y+h/3.25, x+w/20, y+h/3.25);//mouthlower
    noStroke();
    fill(255);                           //sclera color
    ellipse(x-w/4.3, y-y/10, h/5, w/5);  //eye left
    ellipse(x+w/4.3, y-y/10, h/5, w/5);  //eye right
    fill(0);                             //pupil color
    ellipse(x-w/4.3, y-y/10, h/10, w/10);//pupil left
    ellipse(x+w/4.3, y-y/10, h/10, w/10);//pupil right
    rectMode(CENTER);
    fill(100, 75, 10);                //brow color
    rect(x-w/4.3, ey, w/3, h/10);    //left brow
    rect(x+w/4.3, ey, w/3, h/10);    //right brow

      ey = ey - m;          //m is defined in the new Facial(); section -- changing the variable itself will have no effect!
    if (ey>300 || ey<270) { //you'll have to adjust these values manually -- they won't auto-adjust :( sorry...
      m = -m;               //m is defined in the new Facial(); section -- changing the variable itself will have no effect!
    }
  }
}
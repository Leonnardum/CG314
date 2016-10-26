class Clocks {
  float x;
  float y;
  float size;
  color theColor;

  Clocks(float tempX, float tempY, float tempSize, color tempColor) {
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }

  void hover() {
    x+=random(-3, 3);
    y+=random(-3, 3);
  }

  void display () {
    noStroke();
    fill (116, 39, 111);
    ellipse(x, y, size+150, size+150);
    stroke(theColor);
    strokeWeight(6);
    arc(x, y, size+140, size+140, radians(260), radians(280));
    arc(x, y, size+140, size+140, radians(290), radians(310));
    arc(x, y, size+140, size+140, radians(320), radians(340));
    arc(x, y, size+140, size+140, radians(-10), radians(10));
    arc(x, y, size+140, size+140, radians(20), radians(40));
    arc(x, y, size+140, size+140, radians(50), radians(70));
    arc(x, y, size+140, size+140, radians(80), radians(100));
    arc(x, y, size+140, size+140, radians(110), radians(130));
    arc(x, y, size+140, size+140, radians(140), radians(160));
    arc(x, y, size+140, size+140, radians(170), radians(190));
    arc(x, y, size+140, size+140, radians(200), radians(220));
    arc(x, y, size+140, size+140, radians(230), radians(250));
    noStroke();
    fill(theColor);
    rect(x-0, y-50, size+-179/2, size+150/10);
    rect(x+39, y-0, size+-367/2, size+-845/10);
  }
}
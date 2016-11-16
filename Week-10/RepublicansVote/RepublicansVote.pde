float [] repubs;

void setup() {
  size(600, 480);
  Table stats = loadTable("Repub_Turnout.csv", "header");
  repubs = new float[stats.getRowCount()];

  for (int i=0; i<stats.getRowCount(); i++) {
    repubs[i] = stats.getFloat(i, 6);
  }
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  beginShape();
  for (int i=0; i<repubs.length; i++) {
    float x = map(i, 0, repubs.length-1, 20, 460);
    float y = map(repubs[i], 0, 100, 100, 20);
    vertex(x, y);
    endShape();
  }
}
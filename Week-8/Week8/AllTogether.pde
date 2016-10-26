Poop poo1; 
Highwind wind1;
Clocks clock1;
Facial head1;

void setup(){
  size (1280,720);
  
  poo1 = new Poop(400,300, 25, color(255,216,200));
  wind1 = new Highwind(width/4, height/3, 200, color(10,10,10));
  clock1 = new Clocks(120, 500, 100, color(233,233,180));
  head1 = new Facial(width/2, height/2, 200, 300, 300, 4);
}

void draw(){
  background(20,20,100);
  noStroke();
  
  wind1.display();
  clock1.display();
  head1.display();
  poo1.display();
  
}
size(800,600);
background(82,162,231);

//clouds
noStroke();
fill(255);
ellipse(0,150,120,80);
ellipse(80,150,120,80);

ellipse(200,60,120,80);
ellipse(280,60,120,80);
ellipse(360,60,120,80);

ellipse(620,110,80,60);
ellipse(660,110,80,60);
ellipse(580,110,80,60);

//house
noStroke();
fill(255,192,0);
rect(275,200,300,250);


//roof shadow
noStroke();
fill(214,161,0);
rect(275,200,300,30);

//roof
noStroke();
fill(209,56,28);
triangle(250,200,425,50,600,200);
rect(250,200,350,10);

//door borders - I know I could've added stroke to door
//but I'm using this as reference
noStroke();
fill(195,106,0);
rect(290,250,100,10);
rect(290,250,10,200);
rect(380,250,10,200);

//behind door
fill(155,130,53);
rect(300,260,80,190);

//door
fill(0,57,106);
rect(340,280,40,170);
triangle(340,280,380,260,380,280);

//door frame shadow
fill(214,161,0);
rect(390,260,10,190);
triangle(390,250,390,260,400,260);

//window glass
fill(202,250,255);
rect(425,250,115,120);


stroke(0,255,0);
strokeWeight(2);
noFill();
ellipse(465,350,20,40);
noStroke();

//Flower in pot cover
fill(202,250,255);
rect(465,300,30,80);

//Flower in pot
fill(255,255,165);
ellipse(470,330,20,20);
fill(255,0,0);
ellipse(470,330,8,8);

//flower pot
fill(233,67,19);
rect(440,350,30,20);
fill(135,51,25);
triangle(455,370,465,350,465,370);
rect(465,350,5,20);



fill(202,250,255);
triangle(440,350,440,370,450,370);
triangle(470,350,470,370,460,370);

//window borders - I know I could've added stroke to glass
//but im using these as reference
fill(195,106,0);
rect(415,240,135,10);
rect(415,240,10,130);
rect(540,240,10,130);

//window borders shadow
fill(214,161,0);
rect(550,250,10,130);
triangle(550,240,550,250,560,250);


//window seal
fill(255);
rect(410,370,145,20);

//window seal shadow
fill(214,161,0);
rect(430,390,145,20);
triangle(410,390,430,390,430,410);
triangle(555,370,555,390,575,390);

//ground
fill(191,123,51);
rect(0,480,800,120);


//spill on ground
fill(0,216,255);
ellipse(260,480,70,30);


//base
fill(130);
rect(225,450,400,30);

//spill on base
fill(0,216,255);
ellipse(260,450,30,60);

//stems
noFill();
stroke(0,255,0);
strokeWeight(2);
ellipse(310,495,20,20);

fill(0,255,0);
line(265,500,265,530);
line(200,490,200,520);
//stem cover
noStroke();
fill(191,123,51);
rect(310,480,20,80);


//flowers
noStroke();
fill(255,255,165);
ellipse(200,490,20,20);
ellipse(310,480,20,20);
ellipse(265,500,20,20);
fill(255,0,0);
ellipse(310,480,8,8);
ellipse(265,500,8,8);
ellipse(200,490,8,8);

//cutting off upper part of spill on base
fill(82,162,231);
rect(225,400,50,50);


//waterdrain
fill(170);
rect(255,210,10,230);

fill(140);
rect(250,250,20,5);
rect(250,300,20,5);
rect(250,350,20,5);
rect(250,400,20,5);

fill(50);
stroke(100);
strokeWeight(1);
ellipse(260,440,9,9);
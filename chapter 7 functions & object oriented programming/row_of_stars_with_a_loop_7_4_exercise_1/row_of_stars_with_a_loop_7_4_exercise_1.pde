//exercise 1 - use a loop with this star function to create a row of ten stars, or use a loop to somehow make a bunch of stars appear.

void setup(){
  size(700,700);
}

void draw(){
  star(200,200);
  star(500,500);
}

void star(float xstar, float ystar){//let's make a star function with 3 initial arguments that will be the coordinates for the left hand side corner of the star, and the side length
  stroke(255);
  fill(100);
  beginShape();
  vertex(xstar,ystar);//side 0
  xstar=xstar+51;
  ystar=ystar-5;
  vertex(xstar,ystar);//side 1
  xstar=xstar+19;
  ystar=ystar-50;
  vertex(xstar,ystar);//side 2 x+=70 at upper/centre point and y-=50
  xstar=xstar+19;
  ystar=ystar+50;
  vertex(xstar,ystar);//side 3
  xstar=xstar+51;
  ystar=ystar+5;
  vertex(xstar,ystar);//side 4 x+=140 at eastern point
  xstar=xstar-40;
  ystar=ystar+25;
  vertex(xstar,ystar);//side 5 y+=25
  xstar=xstar+15;
  ystar=ystar+55;
  vertex(xstar,ystar);//y+=70
  xstar=xstar-45;
  ystar=ystar-35;
  vertex(xstar,ystar);//side 6 x=70 at bottom centre point and y+=40
  xstar=xstar-45;
  ystar=ystar+35;
  vertex(xstar,ystar);
  xstar=xstar+15;
  ystar=ystar-55;
  vertex(xstar,ystar);
  xstar=xstar-40;
  ystar=ystar-25;
  vertex(xstar,ystar);
  endShape(CLOSE);
}

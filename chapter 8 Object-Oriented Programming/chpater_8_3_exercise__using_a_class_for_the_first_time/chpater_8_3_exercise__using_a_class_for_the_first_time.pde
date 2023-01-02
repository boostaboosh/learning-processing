//exercise: add the top function and make it so that if the bubble is pressed with the mouse is pops.

Bubble b1, b2;

void setup(){
  size(300,700);
  b1 = new Bubble(150,height,50,1);
  b2 = new Bubble(200,height-100,70,2);
}

void draw(){
  background(255);
  b1.display();
  b1.rise();
  b2.display();
  b2.rise();
}

void mousePressed(){
  b1.pop1(height,mouseX,mouseY);
  b2.pop1(height,mouseX,mouseY);
}

float circleX;

void setup(){
  size(700,700);
  circleX=50;
}

void draw(){ //draw is looping over again
  //drawing stuff
  background(50);
  fill(255);
  ellipse(circleX,mouseY,24,24);
  
  //logic
  circleX=circleX+mouseX /100; //this is an assignment operation. It evaluates the right hand side of an equation, and it takes the result of that value and assign sit to the left side. so CircleX becomes 50+1, then 51+1, etc.
  //This is the foundation behind everyhthing we do. We come up with an algorithm.
  //we can change the speed by changing the increment. circleX=circleX+2 doubles the speed for example.
  //if we want to half the speed and type circleX=circleX+0.5 we get an error because we declared circle as an integer, so we can fix this by declaring circleX as a float.
  //interesting thought... there isn't actually half a pixel on our screen to light up. There is no pixel 50.5 or 0.432 but Processing allows us to use float values for pixels, so pixel 4.1 will still light up pixel 4. This allows us to increment values
  //slowly in float form, so we can slow down the rate at which things move across the screen and what not.
}

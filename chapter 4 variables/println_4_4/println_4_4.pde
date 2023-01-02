//using println() -->print line

//You will write code and things won't work. Lines of code won't work. Code doesn't work and you get an error. Often your code will run but it doesn't do what you expected it to do. And which point there is a lot of debugging.

//println("hello") //this will print hello in Processing's messaging console. You could also say println(circleX) and the Processing console will show all the values of circleX as they are created. This gives us a clue when we have a problem.

//we could also write println("circleX:"+circleX); which would provide us with a label for the variable we're printing in the console. This is useful if we're managing lots of variables and printing them all to the console.

float circleX;

void setup(){
  size(700,700);
  background(100);
}

void draw(){
  
  circle(circleX,mouseY,random(5,100));
  
  circleX=random(width);
  
  println(circleX);
}

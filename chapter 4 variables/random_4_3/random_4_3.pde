//using random()

float circleX;
float circleY;
float R;
float G;
float B;
float wandh;

void setup(){
  size(1000,1000);
//  circleX=random(0,width); //This is both an assignment operation, that assigns a value, and it's both a function call, random is a function with an argument inside a parenthesis.
  //Random is a different kinf of function that line() though. With line() we call a decree: "Oh line(), draw a line."
  //When we call a function like random() we are actually asking a question: "Oh, random, what is a random number between 0 and 100?", and random responds "Here, this is a number between 0 and 100."
  //There are lots of methods in processing that work this way, for example map();, constrain();, etc.
  //The random function can take 1 argument which is the maximum of the random value, and zero is the default minimum value. It can also take 2 arguments, the first is the smallest number the random value can take,
  //and the second number is the maximum value the the function can take.
  //The function actually returns floating point values, so the random function actually return infinite values. This is fine for us if we've declared our variables as floats. There are some cases where we need to take our results and convert them to integers.
  //How random is this? This random number comes from what is called a pseudo-random number generator. It was invented by mathimaticians you could spend years researching. It isn't perfectly random, as opposed to what you might find in some occurence in nature.
  //Our pseudo-random number generator will exhibit a pattern over time. It's a mathimatical function that gives you some kind of random sequence of numbers.

//  circleX=width/2; //starts in the middle
  //notice that if we declared this variable containing width before having established size in setup, we would not be able to create it. This is an example of a variable that must be declared in setup, after size, and not beforehand.

//  circleY=height/2;
//these value for width and height variables makes the circle start in the center of our screen.

  background(50);
}

void draw(){
  //drawing
  stroke(R,G,B);
  fill(R,G,B);
  circle(circleX,circleY,wandh);

  //logic
  circleX=random(width);
  circleY=random(height);
  wandh=random(10,100);
  R=random(255);
  G=random(255);
  B=random(255);
}

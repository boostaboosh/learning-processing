//A variable is a mechanism for dynamically storing a valuable. For example the value of 

//A computer has random access memory (RAM). Somewhere in the memory is the value of mouseX. What we want to do is build our own variable. mouseX is known as a built-variable.
//What we need now is a POINTER to some place in the computer's memory that we're gonna call circleX, that we're going to store some value in. This is a user-defined variable. 
//If we can make one variable, we can make lots of variables, and consequently we can make complicated programs with lots of different information. We're gonna start with 1 variable
//for one circle's coordinates.
//When we want to make a variable to store some sort of value we need to do this in 3 steps:
//#1 declare the variable
//#2 initialise the variable
//#3 use the variable (optional)
//There are instances in which we don't have to initialise a variable. But generally speaking it is very good practice to initialise our variables once we declare them.
//So, how do we declare a variable?
//we have to give it 2 things: a type, and a name, followed by a semi-colon. --> type name
//By type we mean data type. This is java, which is a type based language, so we need to always decalre the type.
//What are possible types? 
//int is a type, int stands for integer, so a whole number like 5 or negative 3.
//float is a type, meaning a decimal number, a floating point number, like 2.39317, or -439.4254
//There are a lot of other types too. You can look them up in the Processing reference.

//int circleX; //your varaibles name can be anything you like, but most of the time you want a variable name that works with whatever it is that you're using it for.
//variable names can have letters and numbers in them, but numbers can't be first. It is the convention to always have your variable name be lower case, you also want to aboid using 
//words that are key words that are reserved for other things in Processing.
//for now let's list our variables at the top of our code.
//The next step we need to do is to initialise our variable.
//Until now all of our lines of code have been function calls--> function name argument semi-colon
//Now we are going to write a line of code that is an assignment operation. That's what we do when we initialise a variable.

int circleX;
float circleY;
int bgred;
int bggreen;
float bgblue;
int side;
int radiustoo;

void setup(){
  size(640,360);
  circleX=50;//We are assigning circleX's value to 50. We are assigning circleX's value to 50. We could of done mathimatical calculations in assignment operations, for example 5 times 10 plus 2
  bgred=255;
  bggreen=100;
  bgblue=150;
  side=100;
  radiustoo=40;
}

void draw(){
  background(bgred, bggreen, bgblue);
  fill(mouseY);
  rect(mouseX, mouseY, side, side,radiustoo);
  fill(0);
  ellipse(circleX,mouseY,50,50);
}

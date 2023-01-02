// a variable has a name, like x, it is of a type, say integer, and it might have an initial value
//for example
int x=100;

//let's make a boolean variable
boolean going=false;
//a boolean variable can only have two values, false or true
//a conditional statement is an expression. If an expression evaluates to true, execute some code.
//So if we have a conditional statement  like:
//if (going){do this}

//it will only execute id the boolean variable going is true. If the value is false, then the code will not be executed.

void setup(){
  size(700,700);
}

void draw(){
  background(0);
  fill(255);
  
  ellipse(x, 150, 25, 25);
  
  if (going){
    x=x+2;
  }
}
void mousePressed(){
    //if (going){
      //going=false;
    //}
    //else {
      //going=true;
    //}
    //Using if and else statements works and is sometimes better but in this scenario we can actually do things more easily.
    //We can use the NOT logical operator
    going=!going;
    //going is a variable with a type of boolean. So it is either true or false. The inverse of going, i.e. NOT going, is going to be the opposite of going's value. So true if going was false, and false if going was true.
  }

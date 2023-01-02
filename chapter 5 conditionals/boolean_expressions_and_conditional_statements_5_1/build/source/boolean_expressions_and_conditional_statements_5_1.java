import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class boolean_expressions_and_conditional_statements_5_1 extends PApplet {

//5.1 Boolean Expressions - conditional statements

float circleX=0;

public void setup(){
  
}

public void draw(){
  background(50);
  line(200,0,200,height);

  if(mouseX>200){
    background(255,100,0);
    line(200,0,200,height);
    }
}


//Conditional statement:

//if(? boolean expression){
//}

//this is also a block of code like void draw(){}
//what this block of code is saying is: IF what is between parenthesis is true, then execute this code, IF NOT, don't execute this code
//this allows our program to path different behaviours at different moments in time.

//What goes in bewtween the parenthesis is known as a boolean expression.
//A boolean expression is an expression that only equates to either true, or false. Distinctly true or false, no grey area whatsoever.

//there are many ways to create boolean expressions. The simplest is using relational operators:
//  > means greater than
//  <  less than
//  >=  more than or equal to
//  <=  less than or equal to
//  ==  equal to
//  !=  not equal to

//for now let's focus on < and >
// an example of a boolean expression is:
//    6>5
//This is an expression that evaluates to true or false. This is a true statement
//    717<-10
//This is a false statement

//so we put these expressions in between our parenthesis in our conditional statement
//For example:
//    if(6>5){}
//While syntactically this is correct, this has no logical value, because 6 greater than 5 can never be anything but true.
//The point of writing these boolean expressions is not to use hard coded numbers, but to use variables.
//Variables which have variable values, sometimes greater than 5, sometimes not.
//For example:
//    if(mouseX>5){}
  public void settings() {  size(700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "boolean_expressions_and_conditional_statements_5_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

Bubble b;

void setup(){
  size(300,300);
  b = new Bubble();
}

void draw(){
  background(255);
  b.display();//This dot after b is informally known as DOT SYNTAX
  b.ascend();//This dot after b is informally known as DOT SYNTAX
  //b.top();
}

//We have the beginnings of a program here.

//This program has given us instructions for how to write the class. We now know what functions the class needs to have.
//This is a design question we want to think about while we work on something. 
//It's up to us whether we want to figure out what the object needs to do first, and then write the class to inform that. 
//Or if we want to write the class first, and then figure out what the object needs to do.

//What we've done here is first, write a program that had no functions at all, and had a lot of code inside setup and draw. Then we added functions, so we had variables, initialisation, and a bunch of functions in draw.
//We've now moved that to our next stage, and said "forget about the inner workings of a bubble, how does that even work?"
//We just know how to control a bubble, we know we're going to have a bubble, we're going to have a new bubble, and we're going to apply these three functions to it.

//So, how do we define a class?
//We need to define a class:
//class Bubble{
  //float x;
  //float y;
  //everything about how a bubble works is going to go in here. This is not an actual bubble object, this is just what it means to be a bubble.
  //One thing we know is we have to have a function called ascend, we have to have a function called display, we have to have a function top.
  //That means that inside the class we need to have some functions definitions.
  
  //So let's make a display function.
  //void display(){ //and how is a bubble displayed? As an ellipse.
    //ellipse(x,y,64,64)
  //}
  //This is now a function inside of a class, all bubble objects have the ability to execute this function.
  //Where does the ellipse x and y come from? We need to have an x and a y variable for the bubble class. Let's add them up top.
  //remember, what is an object? It is data+functionality, variables+functions.
  
  //So where are we going to write this class?
  //Well we could write it down in the same page as our main program, but we can actually make a new tab and keep our class in that tab.
  //Let's do that.
//}

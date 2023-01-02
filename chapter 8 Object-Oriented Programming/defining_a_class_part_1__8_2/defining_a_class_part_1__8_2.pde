//We are going to look at the syntax for writing an object in our main program, and the syntax for defining a class, how to define the template that will allow us to make objects.

//So, let's say we have a bubble object in a program where the bubble rises to the top of the screen. 
//It's a non object oriented program. We want to turn it into an object oriented program. 
//How do we do that?

//Let's look at this backwards. Before we can make an object in our code, we've got to define a class.
//Well, let's look at the syntax for using objects in our code.

//We know the general framework, there's setup and draw.
//setup(){}
//draw(){}
//We need to first DECLARE a variable, let's call it b: Bubble b;
//Bubble b;
//setup(){}
//draw(){}

//This is pretty similar to something we've done before, for example: int X;
//int is the data type, and X is the name.
//When we've written Bubble b; we've done something super duper exciting, we've actually made an entire new data type.
//We've only looked at floats and ints, and maybe if we've gone further into Processing we might have made something of type PImage, or type String.
//Notice that PImage and String have capital letters, that's just the convention:
//Lower case first letters are for primitive data types, a primitive data type is a data type that's just a single number, a zero or a one, or a 2.3
//An object data type is more complex, it's a collection of data and functions. String and PImage are complex data types.

//So here we are. Bubble b;
//We've made a data type called Bubble.
//Now, when it comes time to go thorugh into draw, we want to act on that bubble.
//We want to display that bubble and we want to have the bubble rise up the screen.
//Let's code that up:

//Bubble b;

//void setup(){
  //size(300,300);
//}

//void draw(){
  //b.display();//This dot after b is informally known as DOT SYNTAX
  //b.ascend();//This dot after b is informally known as DOT SYNTAX
//}

//We are doing something sifferent here. 
//We are calling a function, but we aren't just calling a function willy nilly and saying "hey, display, hey ascend, hey etc."
//We're saying "nahnahnahno, THIS OBJECT, object b, WE ARE CALLING A FUNCTION ON THIS OBJECT.

//So object is b, that's the variable name, the type is Bubble, 
//we are now ACCESSING that object through the dot, we are saying "go inside and display that Bubble b, go inside and ascend that Bubble b"

//Here's the thing though, if we were to run this code right now, it would not run. Processing would say "I don't know what that Bubble b is"
//This is because we declared our variable, but we forgot to initialise it.
//Step 1 to using a variable is to DECLARE the variable: int X;
//And step 2 is to INITIALISE the variable: X=10;
//INITIALISING AN OBJECT looks different, with an object the syntax looks like this: b = new Bubble();
//So this is something new that we haven't seen before.
//This is saying "b is a new instance of a Bubble object.", NEW MEANS MAKE ME A NEW OBJECT.
//Bubble b() is actually executing something called the constructor, that we will see in a little bit, it's the moment that the object is born, it's the birth of the Bubble object.

Bubble b;

void setup(){
  size(300,300);
  b = new Bubble();
}

void draw(){
  b.display();//This dot after b is informally known as DOT SYNTAX
  b.ascend();//This dot after b is informally known as DOT SYNTAX
}

//So this is where we are. If we remember, at the start we imagined a program that conceptually has this bubble flaoting up the window. 
//It has some variables and it has some functions for doing that, but it's was NOT written in an object oriented way. That program is the guts of the bubble. The guts of the bubble was all in the main program. 
//We want to move the guts to a class. So that in the main program we can actually discuss the bubble object itself, the way we have done here. In defining a class part 2 we will see how to do that.

//exercise: Considering what we have done here, if you were to design a programming language, how would you define a class?

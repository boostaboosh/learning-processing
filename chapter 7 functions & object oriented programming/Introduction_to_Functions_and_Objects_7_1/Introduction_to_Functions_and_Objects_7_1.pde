//we have learnt stuff about programming. But now we will look at tools and ways to organise our code to make it more scalable.
//We need two key principles to do this.
//Principle number 1) MODULARITY
//Principle number 2) RE-USABILITY

//our bouncing ball sektch:
//we declared variables at the start
//we had a function in setup()
//we had a bunch of stuff going on in draw()

//What if instead we could write our program like this:
//I'm going to have a ball object called b: ball b;
//in setup() I'm going to say "b is a new ball object": b=new ball()
//and in draw() I'll say things like "b should move around the screen": b.move()
//and "b should bounce off the edges off the edges of the window": b.bounce()
//and "b should be displayed": b.display()

//This is what we want our program to look like. We have a ball, we're going to make that ball in setup(), and we're going to ask that ball to do things in draw(), like move, bounce, display, etc.
//This style of programming isn't more efficient from the computer's perspective. But it's more readable from a human's perspective. It's more comfortable.
//We have different sections: it's modular. We have different functions to do different things. These are modular pieces in our program.
//We have this idea of reusability. We have this ball object. If we want a second ball we don't have to recode all the code for the first ball again. 
//We can simply say "I want to have a second ball": ball b2;

//What if we wanted to take all this stuff and package it up into this mini program, that will live somewhere else called ball class: class Ball{}
//And this mini program has everything about a bouncing ball embedded inside of it (variables, functionality, etc.).
//We want to write this program that will act like a modular piece, that we can re-use: we could make bouncing balls in this program, in another program, in any program, etc.

//Before we can do any of these things, we need to know how to write our own functions, and what it means to call a function. Then we need to learn to break our program up into seperate functions.
//And then we can put some functions together and wrap them into an object.

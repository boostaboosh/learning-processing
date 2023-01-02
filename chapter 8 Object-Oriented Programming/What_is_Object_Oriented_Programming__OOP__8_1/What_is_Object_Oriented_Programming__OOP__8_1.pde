//What is Object-Oriented Programming (OOP)? chapter/session 8 - lesson 1

//What is the theory about OOP (object oriented programming)?

//To start with, what are we trying to do with object oriented programming?

//In one sense we are trying to understand a computer program in the way we think about the world.

//Here is an example of a bouncing ball program written with OOP.
//When we run the program, what we're looking at is an instance of a ball object moving around the screen.

Ball b;

void setup(){
  size(300,300);
  b = new Ball();
}

void draw(){
  background(0);
  b.update();
  b.checkEdges();
  b.display();
}

//So, what is a ball object?
//What is the innovation of object oriented programming OOP?

//well, so far our programs have  looked like this
//We have setup and they have draw, and we have a bunch of variables above them.
//variables=X //we can think of the variables as the DATA of the program, the x, the y, the xspeed, the fill, the colour, etc.
//setup(){...}
//draw(){...} //We have the FUNCTIONALITY of the program, something is moving, expoding, displaying, dancing, doing stuff, etc

//What OOP does for us is say "okay, we have data and functionality, we want to put those things together." data+functionality
//"we want to have an object that wraps the data for an entity, and the functionality for an entity, all together". Enteties are objects.
//What is that entity?
//That's up to us: conceptually how we organise the pieces of our program.
//If we were making a Pong game program maybe we have paddles, so there would be paddle objects, and ball objects, and something to manage the whole game (scores & players), so maybe we would have a game manager object.

//One way to start thinking about this is to start thinking of you yourself as an object, an object living in our world.

//We have DATA for a human object. 
//A human has data: a height, a weight, a personality, an eye colour.
//As we can see here, there's lots of data that can be associated to describe the different aspect of a human being.

//A human being can also do things. Humans also have FUNCTIONALILTY.
//We can eat(), we could sleep(), we could run(), etc. This is all functionality.

//So as we can see there is DATA & FUNCTIONALITY associated with a human.
//What would it mean to package all those things up into an object so that we could add human beings to our processing sketch?

//So this is the theory behind what we're doing.

//So what do we have here?
//We have an idea, the concept of what it means to be a human being:
//We have a template for making a human being, we have a cookie cutter, a cutter to cut a human being out of the stuff that would make a human being.
//We ourselves are an instance of a human being object.
//So we have a CLASS.
//A CLASS IS THE TEMPLATE.
//We need to write a template for what it is to make a ball, so that we can have an actual instance of a ball object in our program.

//So THE CLASS IS THE TEMPLATE, and THE OBJECT IS THE THING ITSELF.

//So we're going to make a class, we're going to learn how to write a class, so that we can make an object in our program.

//So, an object itself is an instance off the ball, but the template is what defines what it is to be a ball bouncing around the screen in Processing.

//exercise: take something you've done in a Processing sketch and write for yourself what is the data associated with it, what are the functions associated with this. (doing chapter 6 final exercise)

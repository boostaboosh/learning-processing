//block of code
//a block of code is always noted with an open curly bracket to begin, and a closed curly bracket to end
//the code that is contained within that block goes in between those curly brackets

//so we need to blocks of code, 2 elements: one will be called setup, and one will be called draw
//What is the flow of our program?
//Our program is going to do some things at the beginning. This is the setup, the initialisation conditions.
//So setup is the stuff that is gonna happen once, once and only once.
//Then our program is going to do some things over and over again. This is going to be our draw block of code.
//This is the stuff that's going to happen for ever, over and over again, in a loop.
//Why does this flow make sense for us?
//For example the game pong. There are often a bunch of things you have to do to initialise the program... set score to zero,
//place puck in starting location, place the paddles in the starting positions.
//Then there are things you have to complete over and over again. move the paddle, draw the paddle, move the paddle, draw the paddle,
//if the puck hits the paddle, turn the puck around. If the puck goes past the paddle increase the score.
//All this stuff is continuously happening while the program is running.

//This is our basic flow foundation, some stuff that happens at the beginning, and some stuff that happens over and over.

//so for our Paul, what should happen at the beginning, and what should happen over and over?
//void setup(){ //what does this mean? Why we have paretheses after void, and what void means will come later.
  //what we're actually doing here is we're defining a function, out setup function, and we are defining the code in contains.
  //the convention is to indent your code that is contained in a function. Often times it is automatically indented.
//  size(700,360);//obviously size should happen at the beginning, it's an initialisation step.
//  background(0,255,255);//where should we put background for our program? We could probably put in either setup or draw. Let's see the different things that happen if we put it in one
                        //or the other
//}
//void draw(){

//  fill(150);
//  stroke(255);
  //rect(350,190,50,50,10); //what if instead of having the rectangle at 350, 190 we wanted to have the rectangle drawn at the mouse's X position?
//  rect(mouseX,mouseY,50,50,10); //We can use mouseX. mouseX is a variable, it stands for a number. mouseX stands in for whatever the current value of the mouse's current X position is.
  //Processing knows what this variable is, and it turned it pink for us, it's a built in variable. mouseX isn't a command, a function, mouseX is a variable. 
  //Processing turned in pink instead of blue.
  //We can dynamically access the width and height of our window with the built in width and height variables.
  //You can highlight a word that is recognised in Processing and right click the highlighted word, at this point if you press "find in reference" you will be taken to the reference page of that word
  //In addition to mouseX and mouseY, there are also the built-in variables pmouseX and pmouseY. These are the previous mouse positions which processing always stores for us.
//  line(pmouseX,pmouseY,mouseX,mouseY);
//  strokeWeight(35);
//}
//We know we've established 2 new blocks of code when dealing with the flow of a program
//Code in setup happens once at the beginning, code in draw happens over and over again.
//This is a very simple and basic model for controlling the flow of a program.
//flow: how the program executes the instructions, in what order
//A lot of programs don't have this animation loop at all.
//We want to introduce the idea of an event.
//A lot of programs, especially a lot of web applications, have a bunch of events: this event triggers this event, which triggers this event, then the program waits till this events happens, then...
//But this is an animation program that runs continuously, but an event might interrupt this loop.
//Two obvious events we can start with are the idea of an interaction event, a mouse click or a key press.
//This event only happens once at the moment of the event.
//Say we want an interaction event that triggers when out mouse is pressed. We can use mousePressed(){}
//This is a block of code only runs if the event occurs, and when the event occurs it runs once. This means that the event happens once if the event occurs, it could happen more than
//once, it could never happen.

void setup(){
  size(700,700);
  background(50);
}

void draw(){
  stroke(255);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed(){
  background(50);}

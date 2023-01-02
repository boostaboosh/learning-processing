//float ballx=110;
//float bally=110;
//float xspeed=-8;
//float yspeed=5;
//float ballw=50;
//float ballh=50;
//float R=255;
//float G=255;
//float B=255;

//void setup(){
  //size(700,700);
//}

//void draw(){
  ////setting background and stroke
  //background(0);
  //stroke(255);
  //fill(R,G,B); //using a variable for each colour means I can make the colour change.
  
  ////let's make a ball
  //ellipse(ballx,bally,ballw,ballh);
  ////I want the ball to move, so I've made it's X and Y values variables so that they can change.
  
  ////I've made it so that the value of the ball's X and Y variables increase/decrease every draw animation cycle based on the value of xspeed and yspeed.
  //ballx=ballx+xspeed;
  //bally=bally+yspeed;
    
  ////making my ball bounce back and fourth
  //if(ballx+ballw/2>width||ballx-ballw/2<0){
    //xspeed=xspeed*-1;//this changes the direction of the ball without the ballx getting stuck betwen being just more than, or just less than width.
    //R=random(0,255);
    //G=random(0,255);
    //B=random(0,255);
  //}
  
  ////making my ball bounce up an down
  //if(bally+ballh/2>height||bally-ballh/2<0){
    //yspeed=yspeed*-1;
    //R=random(0,255);
    //G=random(0,255);
    //B=random(0,255);
  //}  
//}

////////////////////////////////////////////////////////This is a bouncing ball program.
//What we want to do when we look at this program is think to ourselves "What's going on here?"
//We want to break it down.

//There are 3 things going on here.
//number 1) every frame of animation we have to draw the circle on the screen.
//number 2) every frame of animation we have to advance the circle's position, we have to move it.
//number 3) every frame of animation we have to check if the circle has hit the edge of our window, and if it has, we need to turn around.

//This is our goal, we want our draw function to look like this:
//void draw(){
  //displayBall();
  //moveBall();
  //checkEdges(); ////we could have called these functions anything we wanted, this last one could be called bounce for example
//}

//There are so many advantages to our draw function looking like this:
//Our program is modular, it's in 3 parts,
//it's readable, we can kind of understand it, we don't have all this gobbly-guke all through draw, it's only 3 lines
//We can start to organise our thoughts together nicely, and we'll see in a moment that it is very easy to turn these sections of our code on and off to allow us to debug, to find problems in our program very easily.

//So, how do we do this? We need to define these functions, we need to define displayBall, moveBall, and checkEdges.

//void displayBall(){
//}

//void moveBall(){
//}

//void checkEdges(){
//}

//We've now written these 3 functions, what do we want to do with these? We want to take all the old code for displaying our circle, and put it in their respective functions.
//So let's do that, let's get the code for each task and put it in the respective function.

void displayBall(){
  stroke(255);
  fill(R,G,B); //using a variable for each colour means I can make the colour change.
  
  //let's make a ball
  ellipse(ballx,bally,ballw,ballh);
  //I want the ball to move, so I've made it's X and Y values variables so that they can change.
}

void moveBall(){
  //I've made it so that the value of the ball's X and Y variables increase/decrease every draw animation cycle based on the value of xspeed and yspeed.
  ballx=ballx+xspeed;
  bally=bally+yspeed;
}

void checkEdges(){
  //making my ball bounce back and fourth
  if(ballx+ballw/2>width||ballx-ballw/2<0){
    xspeed=xspeed*-1;//this changes the direction of the ball without the ballx getting stuck betwen being just more than, or just less than width.
    R=random(0,255);
    G=random(0,255);
    B=random(0,255);
  }
  
  //making my ball bounce up an down
  if(bally+ballh/2>height||bally-ballh/2<0){
    yspeed=yspeed*-1;
    R=random(0,255);
    G=random(0,255);
    B=random(0,255);
  }
}

//Now what?
//We can define all the functions we want, but if we don't explicitly call it somewhere in the flow of the program, nothing is going to be executed.
//So we need to call our functions somewhere in setup or draw.

float ballx=110;
float bally=110;
float xspeed=-8;
float yspeed=5;
float ballw=50;
float ballh=50;
float R=255;
float G=255;
float B=255;

void setup(){
  size(700,700);
}

void draw(){
  //setting background
  background(0);
  
  //Let's use our super useful sexy functions.
  displayBall();
  moveBall();
  checkEdges();
}

//This has a lot of advantages, for example, let's say something was going wrong in this program.
//We can now turn off different functions, to make sure they aren't causing the problem, and narrow down where the problem is.
//Then we can use the println() function to test out different parts of the problematic sections of our code.
//So in addition to making our program more modular, so it's readable, we've also defined the functional piece of our program, the conceptual pieces of our program.

//So this is step 1. We haven't made anything re-usable in our program, however we've made it modular.
//What if we wanted to have a second ball?
//We need some way of making our code re-usable.
//The way to make our code re-usable, is thorugh the use of arguments to a function.

//exercise before next video, take something you've written in Porcessing with a lot of code in setup and draw and say:
//"what are the conceptual pieces of what's happening in this program?"
//divide the program into those sections
//write a function for each one of those sections
//call those functions in setup and draw

//Learn to re-organise your thoughts, re-organise your program, and re-factor your program in a way that is a little bit easier to follow.

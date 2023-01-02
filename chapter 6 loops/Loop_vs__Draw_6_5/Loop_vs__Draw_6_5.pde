float endy=1;

void setup(){
  size(700,700);
}

//void draw is a loop.
void draw(){  
  background(0);
  stroke(255,0,0);
  fill(0,255,0);
  strokeWeight(2);
  
  //we can write loops inside of draw. So a loop (our while loop) inside a loop (our draw loop).
  float x=0;
  while(x<=width){
    line(x,0,x,height);
    x+=20;
  }
  
//What if we want to use a loop to animate something. For example what If I want to draw one line at a time in my animation? 
//This is not the loop to do that.
//We can still use a loop within a loop but we need to vary something.
//Let's try and do that when drawing lines going across our animation.

//The outer loop (the draw() function) is what animates things, because Processing programs update the screen every time the code inside the draw() function is executed, at the end of draw(), never earlier.
//So every time code runs through the draw function loop, the screen updates.
//Whereas a for or a while loop don't update the screen while looping, or after looping. While and for loops are aways executed in their entirety.

//So, in conclusion, the main draw() loop is for the purpose of animation we want to vary each time code goes through draw(),
//whereas a loop inside draw is for repeating an element multiple times in one frame of animation.
  
  //float y=0;
  //while(y<height){    //we notice that the number of lines drawn is regulated by whatever y needs to be less than. 
  
  //This tells us that we need to turn this into a variable.
  //We'll call this variable endy and declare it as a global variable at the start of our program.
  
  //We will have a while loop like before to generate horizontal lines, but instead of having y be less than a constant value, it will be less than a variable, endy.
  //This allows us to update the value of the variable endy every time our code runs through draw. This will update the limit of our while loop to the new value of endy
  //every time our code runs through the draw() function.
  float y=0;
    while(y<endy){
    line(0,y,width,y);
    y+=20;
  }
  
  endy+=1; //The size of the increment effects the speed at which the horizontal lines are animated.
  
  //we can also use the delay() function to slow down the speed at which the lines are drawn in miliseconds.
  delay(30);
  
}

//a for loop is a shorthand way of writing a type of while loop, but you could use a while loop. It doesn't add any functionality.
//Let's learn to write a while loop as a for loop.

//float x=0;

void setup(){
size(600,600);
}

void draw(){
  //there are 3 elements to our loop. (4 if you include the stuff that you do inside a loop)
  float x=0;//number 1) our initialisation condition
  while(x<width){//number 2) we have a boolean expression. We need to check if our boolean expression is true, if it is continue looping, if it's false, finish looping
    line(x,0,x,height);//number 4) the stuff that you do (the code you execute) inside the loop
    x=x+20;//number 3) we have an incrementation operation. This increments a variable at the end of our loop to ensure that our exit condition is met.
  }
  //a for loop takes three of these common elements and allows you to write them all in one statement.
  //it looks like this. 
  // element 1  element 2  element 3
  for(float y=0; y<height; y=y+20){
    line(0,y,width,y);
  }
  for(float y=0;y<height;y=y+2){
    line(100,y,width-100,y);
  }
  for(float xeye=160;xeye<=440;xeye=xeye+3){
    line(xeye,30,xeye,70);
    if (xeye>240 && xeye<360){
      xeye=360;
    }
  }
}
//Controls a sequence of repetitions. A basic for structure has three parts: init, test, and update. Each part must be separated by a semicolon (;). The loop continues until the test evaluates to false. When a for structure is executed, the following sequence of events occurs:
//
//1. The init statement is run.
//2. The test is evaluated to be true or false.
//3. If the test is true, jump to step 4. If the test is false, jump to step 6.
//4. Run the statements within the block.
//5. Run the update statement and jump to step 2.
//6. Exit the loop.

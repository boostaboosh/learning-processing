float x=0;

void setup(){
  size(1000,100);
}

void draw(){
  //We know how to write a conditional statement. 
  //if a condition, for example x is less than width, execute this code
  //if(x<width){execute this code}
  //We are now going to write a looping statement.
  //There a 2 types of loops, a while loop, and a for loop. We are first going to look at a while loop.
  //A while loop looks like this:
  //while x is less than width, execute this code.
  //While(x<width){execute this code}
  //This is very useful for iteration.(Iteration in programming means repeating steps, or instructions , over and over again.)
  //The code in a looping statement can happen more than once, in theory it could be repeated an infinite number of times.
  background(0);
  x=0; //we need to reset x back to a value of zero every time the code runs through draw because otherwise by the second time we run through draw, x is already greater than width
  while(x<width){ //while X is less than width, do this code. The looping statement will continue until the argument is no longer true.
    //x=x+50;
    
    //x=x+mouseX; 
    //loops must always have an exit condition. It is up to us to make sure it will be met. The syntax might work fine, but the program might get stuck in an infinite loop.
    //With a mouseX value of 0 we're stuck in an infinite loop because x is always valued less than width and never increases. The issue is that mouseX only updates once during draw(), so if we start with a mouseX of zero,
    //when we run the program, we will get stuck in loop because x is always less than width seeing as its value never increases, i.e. we have no exit condition.
    
    if(mouseX==0){
      x=x+0.1;
    }
    else{
      x=x+mouseX; 
    }
    fill(100);
    stroke(222);
    ellipse(x,50,20,20);
    println("circle"+x);
  }
}


//The while structure executes a series of statements continuously while the expression is true. The expression must be updated during the repetitions or the program will never "break out" of while.
//This function can be dangerous because the code inside the while loop will not finish until the expression inside while becomes false. It will lock out all other code from running 
//(e.g., mouse and keyboard events will not be updated). Be careful — if used incorrectly, this can lock up your code (and sometimes even the Processing environment itself).

//variable scope
//usually our processing sketches have setup and draw.
//what if we needed a variable called x that was a float. We usually put it at the top.

//When we are talking about when we talk about variable scope?
//We are talking about what happens when we start to declare (not use, but give a name and type) somewhere else in our code?

//What happens if we declare them in draw, or setup, or inside a conditional statement?

//When we declare a variable at the start (top) of our program, meaning outside of setup and draw, we refer to it as a GLOBAL variable.
//Meaning we can use it anywhere in our program. It's global. We can say x at any point in our code and it's this variable x.

//If we happen to declare a variable somewhere else, it is only usable in that block of code. It is referred to as a local variable.
//A variable decalred inside setup is referred to as local. Meaning it is local only to the setup function. The rest of the program knows nothing about it. 
//So we can use that variable anywhere we want in setup, but we can't use it in draw because it doesn't exist in draw.

//So, what is a variable's SCOPE?
//You have to look at the curly brackets within which you have declared your variables.
//The curcly brackets inside which you have declared a variable is the only place you can use that variable.
//That goes for all blocks of code, setup, draw, a conditional statement, a loop, other types of curly bracket things (blocks of code), like functions or objects, etc.

//If we don't need a variable everywhere, why declare it as global?


//Let's look at an example.

// Example 6-7: Local variables

void setup() {
  size(480, 270);
  // x is not available! It is local to the draw() block of code.
}

void draw() {
  background(0);
  int x = 0;
  // x is available! Since it is declared within the draw() block of code, it is available here. 
  // Notice, however, that it is not available inside draw() above where it is declared. 
  // Also, it is available inside the while block of code because while is inside of draw().
  while (x < width) {
    stroke(255);
    line(x,0,x,height);
    x += 15;
  }
  
  for(float y=100;y<height-100;y+=10){
    line(100,y,width-100,y);
  }
}

void mousePressed() {
  // x is not available! It is local to the draw( ) block of code.
  println( " The mouse was pressed! " );
}

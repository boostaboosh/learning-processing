//NESTED LOOPS IN LOOPS 6 6
//Nested loops are loops within loops.

//When do we need nested loops?
//let's say we want a grid of retangles in our window. Let's see how we can go about making that.

void setup(){
  size(600,600);
}

void draw(){
  background(0);
  stroke(255);
  
  //for(int x=0;x<width;x=x+20){
    //rect(x,0,20,20);
  //}
  
  //for(int y=0;y<height;y=y+20){
    //rect(0,y,20,20);    
  //}
  
  //This doesn't work, it draws one column, and one row.
  //What we did was say "for every column, draw a rectangle, and then, for every row, draw a rectangle."
  
  //What we actually want to do is say "for every column, draw every row a rectangle", in other words: "for every column, draw a rectangle for every row."
  //We don't want two seperate for statements.
  //What we want to say is "for every column, for every row, draw a rectangle."
  
  float side=20;//this is a variable for the side length of our rectangles (squares). 
  //We can use this for our loop exit statement increments (the indices for our rows & columns), aswell as for the side lengths in the rect() function.
    
  //SO this is what we are talking about when we talk about a nested loop/nested loops.
  for(float x=0;x<width;x=x+side){
    println(x);
    for(float y=0; y<height;y=y+side){
      println(y);
      fill(random(255));
      rect(x,y,side,side);
    }
  }
}

//Here's our scenario, we have a nice processing sketch to draw a star pattern.
//We know that we can get all the code to draw the star and put it in a function called star()
//Say we now want a second star, we can write star() again but it draws star in exactly the same place and we can't change the function code without changing both stars.
//We don't have reusability. This function can only be drawn in exactly the same place, with exactly the same size, and with exactly the same colour.
//This function can't be reused in an effective way, it can only be used once.

//So, how do we make something re-usable?
//When I want to draw a rectangle I don't just say rect(), I use the rect function and I give it arguments: rect(xrect, yrect, width, height);
//We want to be able to draw a star with the coordinates as arguments star(100,100);
//We know the star function has no return type, so it's return type is void
//we know the name of the return function is star
//So: void star (...
//Now, what do we put in between the parentheses? The arguments!

//So we want to give the star an X and Y coordinates as arguments. How do we give them to the star?
//We use variables.
//Arguments to a function are local variables local to the use of a function. So only to be used in between the function's curly brackets.
//We want to send the values 100 in to a local variable in our function's arguments. How do we do that?
//We actually declare a variable with a type and a name
//void star(float x, floaty){...
//As few and as many as we want. From zero, all the way to as many as we can practically handle.
//So when we write star(100,100); it's as if we wrote float x=100 or float y=100,
//This star function can now receive values, and store them in these variables just for use locally around the star function.

//So I can now say:
//void star(float x, float y){
  //vertex(x,y);
  //vertex(x+50,y-20);
  //...  
//}

//let's give this a go

void setup(){
  size(700,700);
}

void draw(){
  star(200,200);
  star(500,500);
}

void star(float xstar, float ystar){//let's make a star function with 3 initial arguments that will be the coordinates for the left hand side corner of the star, and the side length
  stroke(255);
  fill(100);
  beginShape();
  vertex(xstar,ystar);//side 0
  xstar=xstar+51;
  ystar=ystar-5;
  vertex(xstar,ystar);//side 1
  xstar=xstar+19;
  ystar=ystar-50;
  vertex(xstar,ystar);//side 2 x+=70 at upper/centre point and y-=50
  xstar=xstar+19;
  ystar=ystar+50;
  vertex(xstar,ystar);//side 3
  xstar=xstar+51;
  ystar=ystar+5;
  vertex(xstar,ystar);//side 4 x+=140 at eastern point
  xstar=xstar-40;
  ystar=ystar+25;
  vertex(xstar,ystar);//side 5 y+=25
  xstar=xstar+15;
  ystar=ystar+55;
  vertex(xstar,ystar);//y+=70
  xstar=xstar-45;
  ystar=ystar-35;
  vertex(xstar,ystar);//side 6 x=70 at bottom centre point and y+=40
  xstar=xstar-45;
  ystar=ystar+35;
  vertex(xstar,ystar);
  xstar=xstar+15;
  ystar=ystar-55;
  vertex(xstar,ystar);
  xstar=xstar-40;
  ystar=ystar-25;
  vertex(xstar,ystar);
  endShape(CLOSE);
}
  
//exercise 1 - use a loop with this star function to create a row of ten stars, or use a loop to somehow make a bunch of stars appear.
//exercise 2 - write the program in such a way that everywhere I click a star would appear.

//exercise: make a grid of squares and colour the squares based on how far they are from the centre of the window or from the mouse

//https://processing.org/reference/dist_.html
//dist()
//Description  Calculates the distance between two points.
//dist(x1, y1, x2, y2)

//start of my program

void setup(){
  size(700,700);
}

void draw(){
  //setting up my paintbrush
  background(0);
  strokeWeight(1);
  stroke(255);
  
  //declaring some variables I'll need in draw
  float side=10;
  float distanza=0;
  
  //making my grid of colourful squares
  float columnx=0; //initialisation condition for our first while loop.
  while(columnx<width){
    float rowy=0; //initialisation condition for our second while loop. We need to put it inside our first while loop or else rowy will be set to height the second time the loop runs, and that will lead to rowy already being >= to height when it's time to draw the second column of squares.
    while(rowy<height){
      distanza=dist(columnx,rowy,mouseX,mouseY); //using the dist() function here (calculates the distance between two points) we can calculate how far each square is from our mouse's coordinates/the centre of the board.
      println(distanza);
      fill(distanza); //we can use the distance between each square and our mouse to determine the colour of the square. The further a square is from our mouse, the brighter it is in this case.
      stroke(distanza);
      rect(columnx,rowy,side,side);
      rowy+=side;
    }
    columnx+=side;//incrementation operation to ensure our exit condition is met
  }  
}

//chapter 8 1 exercise:
//exercise: take something you've done in a Processing sketch and write for yourself what is the data associated with it, what are the functions associated with this.
//DATA
//side
//distanza
//FUNCTIONALITY
//make colourful grid

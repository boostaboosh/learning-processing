//quadrantinho gets a functional makeover

//quadrant if else if else projectinho exerciseinho

//"what are the conceptual pieces of what's happening in this program?"
//divide the program into those sections
//write a function for each one of those sections
//call those functions in setup and draw

//sections:
//displayQuadrants
//locateMouseQuadrant
//colourQuadrant


int location=0;

void setup(){
  size(700,700);
}

void draw(){
  displayQuadrants();
  locateMouseQuadrant();
  colourQuadrant();
}

void displayQuadrants(){
  //first we display the quadrants
  background(100);//drawing the background at the start of each loop so that the quadrants appear uncoloured
  //quadrant lines
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
}

void locateMouseQuadrant(){
  if(mouseX<width/2){
    if(mouseY>height/2){
      //we are in Bath quadrant
      location = 3;
    }
    else{
      //we are in lancaster quadrant
      location=2;
    }
  }
  else if(mouseX>width/2){
    if(mouseY<height/2){
      //we are in Newcastle quadrant
      location=1;
    }
    else{
      //we're in london bitches
      location=4;
    }
  }
  else{ //Processing doesn't detect my mouse out of the program window so we don't actually need this else conditional statement
    location=0;
  }
}

void colourQuadrant(){
  int r;
  int g;
  int b;

  if(location==0){
    //background(0); //if we turn on this line of code, when we have the mouse on the axes the window would just be black
  }
  else if(location==1){
    //newcastle
    r=0;
    g=0;
    b=255;
    fill(r,g,b);
    rect(width/2,0,width/2,height/2);
  }
  else if(location==2){
    //lancaster
    r=255;
    g=0;
    b=0;
    fill(r,g,b);
    rect(0,0,width/2,height/2);
  }
  else if(location==3){
    //bath
    r=0;
    g=255;
    b=255;
    fill(r,g,b);
    rect(0,height/2,width/2,height/2);
  }
  else if(location==4){
    //london
    r=255;
    g=239;
    b=0;
    fill(r,g,b);
    rect(width/2,height/2,width/2,height/2);
  }
}

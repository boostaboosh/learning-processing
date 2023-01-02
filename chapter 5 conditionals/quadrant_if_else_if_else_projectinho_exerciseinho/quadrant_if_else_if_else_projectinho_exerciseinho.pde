//quadrant if else if else projectinho exerciseinho

void setup(){
  size(700,700);
}

void draw(){
  int r;
  int g;
  int b;
  background(100);//drawing the background at the start of each loop so that the quadrants appear uncoloured

  if(mouseX<width/2){
    if(mouseY>height/2){
      //we are in Bath quadrant
      r=0;
      g=255;
      b=255;
      fill(r,g,b);
      rect(0,height/2,width/2,height/2);
    }
    else{
      //we are in lancaster quadrant
      r=255;
      g=0;
      b=0;
      fill(r,g,b);
      rect(0,0,width/2,height/2);
    }
  }
  else if(mouseX>width/2){
    if(mouseY<height/2){
      //we are in Newcastle quadrant
      r=0;
      g=0;
      b=255;
      fill(r,g,b);
      rect(width/2,0,width/2,height/2);
    }
    else{
      //we're in london bitches
      r=255;
      g=239;
      b=0;
      fill(r,g,b);
      rect(width/2,height/2,width/2,height/2);
    }
  }
  else{ //Processing doesn't detect my mouse out of the program window so we don't actually need this else conditional statement
    background(100);
  }

  //quadrant lines
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
}

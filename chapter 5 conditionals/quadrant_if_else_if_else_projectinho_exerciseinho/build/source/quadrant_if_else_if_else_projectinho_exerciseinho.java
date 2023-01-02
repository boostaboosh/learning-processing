import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class quadrant_if_else_if_else_projectinho_exerciseinho extends PApplet {

//quadrant if else if else projectinho exerciseinho

public void setup(){
  
}

public void draw(){
  int r;
  int g;
  int b;
  background(100);
  //fill(r,g,b);
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

  //setting rgb values back to zero so the other quadrants appear their normal colour when they are drawn again throught the loop
  //r=0;
  //g=0;
  //b=0;

  //quadrant lines
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
}
  public void settings() {  size(700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "quadrant_if_else_if_else_projectinho_exerciseinho" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

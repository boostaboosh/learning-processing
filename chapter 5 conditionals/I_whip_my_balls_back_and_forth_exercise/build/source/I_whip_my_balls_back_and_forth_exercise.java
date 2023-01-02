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

public class I_whip_my_balls_back_and_forth_exercise extends PApplet {

float circleX;
float direction;

public void setup(){
  
  direction=4;
  circleX=0;
}

public void draw(){
  //drawing part
  background(150);
  circle(circleX,mouseY,mouseX/10);
  circle(circleX,mouseY/2,mouseX/10);
  line(10,0,10,height);

  //logic part
  circleX=circleX+direction;

  if(circleX>=width){
    direction=-4;}
    println("forwards:"+direction);
  if(circleX<=0){
    direction=+4;}
    println("back:"+direction);
}
  public void settings() {  size (700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "I_whip_my_balls_back_and_forth_exercise" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

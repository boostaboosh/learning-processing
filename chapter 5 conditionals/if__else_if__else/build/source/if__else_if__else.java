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

public class if__else_if__else extends PApplet {

//if, else if, else 5.2

public void setup(){
  
}

public void draw(){
  background(0);

  if(mouseX>500){
    fill(255,0,0);
    rect(550,100,35,35);
  }

  else if(mouseX>400){
    fill(0,255,0);
    rect(450,400,35,35);
  }
  else if(mouseX>300){
    fill(0,255,255);
    rect(350,200,35,35);
  }
  else if(mouseX>200){
    fill(0,0,255);
    rect(250,300,35,35);
  }
  else{
  fill(255);
  rect(25,250,20,20);
}

  stroke(255);

  line(500,0,500,height);
  line(300,0,300,height);
  line(400,0,400,height);
  line(200,0,200,height);
}
  public void settings() {  size(700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "if__else_if__else" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

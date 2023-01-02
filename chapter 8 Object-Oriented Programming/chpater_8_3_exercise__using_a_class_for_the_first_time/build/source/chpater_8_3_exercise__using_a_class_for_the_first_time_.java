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

public class chpater_8_3_exercise__using_a_class_for_the_first_time_ extends PApplet {

//exercise: add the top function and mkae it so that if the bubble is pressed with the mouse is pops.

Bubble b1, b2;

public void setup(){
  
  b1 = new Bubble(150,height,50,1);
  b2 = new Bubble(200,height-100,70,2);
}

public void draw(){
  background(255);
  b1.display();
  b1.rise();
  b2.display();
  b2.rise();
}

public void mousePressed(){
  b1.pop1(height,mouseX,mouseY);
  b2.pop1(height,mouseX,mouseY);
}
class Bubble{

  int xB;
  int yB;
  int bRadius;
  int speed;
  
Bubble(int x, int y, int dia, int s){
  this.xB=x;
  this.yB=y;
  this.bRadius=dia/2;
  this.speed=s;
}

public void display(){
  fill(100);
  circle(this.xB,this.yB,this.bRadius*2);
}

public void rise(){
  if(yB>0){
  yB-=speed;
  }
}

public void pop1(int h, int mousex, int mousey){
  //I need to figure out if the mouse in inside the circle. To do this I can use pythagoras' theorem.
  //I know that the circle's radius squared is equal to sine squared + cosine squared for all points on the circumference.
  //Sine and cosine are simply the y and x coordinates of a point relative to the centre of my circle.
  //So if a point is inside my circle the result of sine squared + cosine squared will be less then my the length of my radius squared,
  //and if a point is outside of my circle it will be more than r squared.
int distX=mousex-xB;
int distY=mousey-yB;
if((distX*distX)+(distY*distY)<(bRadius*bRadius)){
    yB=h;
}
  //int sine=(mousey-yB);
  //if(sine<0){
    //sine=sine*(-1);
  //}
  //int cosine=(mousex-xB);
  //if(cosine<0){
    //cosine=cosine*(-1);
  //}
  //int R=(sine*sine)+(cosine*cosine);
  //int radius=(bDiameter/2)*(bDiameter/2);
  //if(R<=radius){
    //yB=h;
  //}

}
}
  public void settings() {  size(300,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "chpater_8_3_exercise__using_a_class_for_the_first_time_" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

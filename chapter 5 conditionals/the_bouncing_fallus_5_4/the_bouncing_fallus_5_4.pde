//da bouncing ball
float circleX;
float circleY;
float xspeed=2;
float yspeed=5;
float diam=50;
float rectX;
float rectY;

void setup(){
  size(1000, 400);
  circleY=height/2; //If I don't set the fallus to start half way down the window it won't be able to bounce off the top left tip of the fallus because rectY will start off less than 0 and multiply yspeed by -1 and continuously without ever being more than 0.
  circleX=diam; //If I don't set circleX to start as diam, then we will encounter a similar problem to before, because circleX-diam*0.5 will be less than 0 from the get go, and it will continuously be multiplied by -1 without ever being greater than 0.
}

void draw(){
  background(0);
  fill(255,0,255);
  stroke(255);
  ellipse(circleX,circleY,diam,diam);
  ellipse(circleX+diam,circleY,diam,diam);
  rect(rectX,rectY,diam*0.7,diam*2.5,45,45,5,5);
  
  circleX=circleX+xspeed;
  circleY=circleY+yspeed;
  
  rectX=circleX+diam*0.15;
  rectY=circleY-diam*2.5;
  
  if ((circleX+diam*1.5 >= width)||(circleX-diam*0.5 <= 0)){
    println("turn around ballinho");
    xspeed=xspeed *-0.9;
  }
  
  if ((circleY+diam*0.5>=height)||(rectY<=0)){
    println("change gravity ballerinho");
    yspeed=yspeed*-1;
  }
}

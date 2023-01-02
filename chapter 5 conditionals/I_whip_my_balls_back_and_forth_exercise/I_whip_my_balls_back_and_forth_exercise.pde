float circleX;
float direction;

void setup(){
  size (700,700);
  direction=4;
  circleX=0;
}

void draw(){
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

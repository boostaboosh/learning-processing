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

void display(){
  fill(100);
  circle(xB,yB,bRadius*2);
}

void rise(){
  if(yB>0){
  yB-=speed;
  }
}

void pop1(int h, int mousex, int mousey){
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

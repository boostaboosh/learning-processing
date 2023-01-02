float x=0;
float y=0;
float spacing=0;

void setup(){
  size(600,600);
}

void draw(){
  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  x=0;
  y=0;

  spacing=50;
  spacing=spacing+random(-3,3);
    
  while (x<width){
    x+=spacing;
    line(x,0,x,height);
  }
  while(y<height){
    y=y+spacing;
    line(0,y,width,y);
  }
}

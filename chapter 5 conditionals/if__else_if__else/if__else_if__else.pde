//if, else if, else 5.2

void setup(){
  size(700,700);
}

void draw(){
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

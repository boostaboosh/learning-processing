class Bubble{
  float x;
  float y;
  
//So we know that we didn't write the ascend function and we didn't write the ascend function. If we runs this it works, but the bubble is in the top left.
//Why is that? Where did we say the bubble should begin? We declared the variables at the top of bubble. Should we assign their values there? We could, but we need to do things better...

//Remember we said that b=new Bubble(); 
//is calling something called the CONSTRUCTOR, the constructor is the place where the object is born.
//It's like setup for the object. Just like our program has things that happenen at the beginning, and things that happen over and over again, objects also have things that happen at the beginning, what are their initial settings?
//Is it a blue bubble? Is it a big bubble? Is it a bubble in the middle of the screen? What are those INITIAL CONDITIONS?
//We need to WRITE THAT CONSTRUCTOR. The syntax of a constructor is a little bit odd:
  Bubble(){ //class name, open round bracket, close round bracket, open curly bracket, close curly bracket.
    //So the syntax for the constructor kind of looks like a function. But the thing that's different is that it has no return type.
    //In truth, what is the return type? The return type is actually Bubble. It's returning an object.
    //When our program says b=new Bubble(); it's saying make a new object and store in the variable b. So that's what it's returning.
    //The constructor name must match the class name.
    //So the constructor is where we can INITIALISE things, we do so in between the curly brackets.
    x=width/2;
    y=height;
  }
  
  void ascend(){
    y--; //y=y-1;
  }
  
  void display(){
    fill(127);
    ellipse(x,y,64,64);
  }
}
//So, nwo we see that when we're going to make a bubble we need to add all the variables, the constructor, and the functions we need to call.
//We have the DATA, the CONSTRUCTOR, and the FUNCTIONALITY.

//exercise: add the top function and mkae it so that if the bubble is pressed with the mouse is pops.

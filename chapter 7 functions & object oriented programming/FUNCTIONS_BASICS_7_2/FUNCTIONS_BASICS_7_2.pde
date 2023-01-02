//What do we mean by functions? Are we familiar with them?
//background(0);
//This is us calling a function.
//We're calling a function. What function are we calling? It has a name "background".
//And it has arguments, the values we use for different coloured backgrounds, "255", "100", in this case "0".
//Where does this function come from?
//It comes from Processing. But it doesn't just exist by magic. It exists because somebody, somewhere, defined this function.
//Somebody defined what this function means, and what colour should be executed when you, the processing user, called the function backgorund.
//The same is true for other functions like rect(0,0,100,100);

//What if i wrote the function flower(300,20,10,10,10,10); ?
//The function flower does not exist because no one has defined that function.
//This is the moment we can begin to define our own functions. We can say, "I'm going to write that function". Here is the syntax for how to do that.
//First we have to give it a returnType 
//Then we have to give it a name of the function
//Then we give it some number of arguments perhaps (_,_,_,etc.)
//Then we need a open curly bracket, and then a closed curly bracket {  }
//returnType name (_,_,_,etc.){
//
//}
//This syntax is familiar to us.
//We recognise it as a block of code because it has a set of curly brackets. Open curly bracket, and then close curly bracket.
//It looks a lot like void draw(){}
//returnType is void, name of the function is draw, parentheses for arguments are empty because there are no arguments, open curly bracket, close curly bracket
//Incidentally we have been defining our own functions. We've been defining the functions setup() and draw(). Sometimes mousePressed().
//The thing is these are special functions Processing asks us to define to control the flow of the program.
//We know Processing starts at setup(), then draw() happens and it loops over and over again.
//These are functions we're asked to define, and Processing calls them for us.
//What we're now doing is defining a new function, say called flower, that we want to call.

//We're now going to learn what the wrod void means. Void is a function return type. When a function has no return type, you say void. 
//We will also understand what it would mean for a function to have a return type. A function that has a return type would give something back.
//For example float r = random(); that function random returns something back to you. But the functions background() or rect() do not return anything back to you, they perform a task.
//So functions that perform a task that execute some code without returning an answer so to speak at the end, have a return type of void. We will look at the specifics of that in a later video.
//So to write that flower function?
//void flower(){}
//For now we're going to look at functions with no arguments. Clearly arguments are useful. 
//To say draw background of a certain colour, or a rectangle here of this colour, is far more useful than to just say draw a background or draw a rectangle, with no other information.
//We're going to start with a much simpler case of just drawing a flower with no arguments.

//All of the code for drawing that flower should go in between the open curly bracket and the close curly bracket.
//Inside our code the background() line of code looks up backgorund in the Processing API because it's pre-defined in Processing.
//The rect(0,0,100,100); line of code looks up rect in the processing API because it's pre-defined in Processing.
//The flower() line of code will look up flower where the function definition is. Where is the function definition? It where we defined our variable.
//Where do you write that function definition in your code?
//Well you can write it anywhere you want, it could be in between setup and draw, it could be above setup and draw.
//But typically you put it below setup and draw, that's the standard. 
//The key thing is that the function flower is it's own block of code. It cannot be inside another block of code like the draw block of code.


void setup(){
  size(700,700);
}
void draw(){
  background(0);
  flower();
}

void flower(){ //my flower is just a red ellipse
  fill(255,0,0);
  ellipseMode(CORNERS);
  ellipse(300,300,500,500);
}

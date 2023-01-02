//5.2 logical operators: AND, OR
//some logical operators:
//AND &&
//OR ||
//AND and OR are an example of what we're talking about when we're talking about logical operators.
//They let us say thigs like "If I'm hungry AND it's evening, then do this"
//They allow us to join two boolean expressions
//NOT ! 
//is also a logical operator. It does the inverse (exact opposite) of whatever is contained in parenthesis
//for example:
// if (!(x>10)){do this} //if x is NOT greater than 10 do this

//In processing to say AND we use &&, and to say OR we use ||
//for example
//if(!()&&()){                    the conditional statement needs to be inside one pair of parenthesis, so we use a pair of parenthesis to contain the 2 conditional statements
//blah bah blah
//}

void setup(){
  size(700, 700);
  }

void draw(){
  background(0);

  //if ((mouseX>100) && (mouseX<200)){    This is an example of the AND && logical operator
  //if((mouseX<100)||(mouseX>200)){   This is an example of the OR || logical operator
  if(!((mouseX<100)||(mouseX>200))){    //This is an example of the NOT !() logical operator and the OR logical operator used concurrently. In this example ! is used to do the inverse of what is contained in parenthesis.
    background(255,00,00);
  }

  stroke(255);
  line(100,0,100,height);
  line(200,0,200,height);
}

//setting up my canvas and background
size(700,360);
background(0,255,255);
//seting up my "paintbrush"
stroke(150);//colour of "paintbrush", 1 number assumes all numbers of the colourmode are the same. In the case the colour mode is RGB, the default, so it assumes all values are 150. This
fill(255,255,0);//inside colour of my shapes
strokeWeight(15);//"pen" thickness

//drawing lines and ellipses for alien antennas
line(250,60,350,200);
line(450,60,350,200);
ellipse(250,60,35,55);
ellipse(450,60,35,55);

//TO DO: get into the habit of adding comments to my code now. It will inevitably happen that you code a program,
//and when you come back to it you don't remember what everything does, and what you need to do.

//changing the colour mode to HSB (Hue, Saturation, Brightness) from the default RGB colour mode, and changing the fill colour with the now HSB parameters
//Hue reaches values of 360. It's a 360 degree circle of colour. 0 degrees is red, 120 degrees is green, and 240 degrees is blue. 360 degrees is red again. Yellow is inbetween red and green,
//turquoise is inbetween green and blue, and pink is inbetween blue and red. Saturation reaches values of 100 and Saturation is a number between 0 and 100. So, no matter what hue you’ve picked,
//a saturation of 100% will be the richest possible version of that color and a saturation of 0% will be the gray version of that color
//(i.e. if the color is light, it’ll be a light gray; if the color is dark, it’ll be a dark gray). Saturation is pretty simple.
//I sometimes think about it as the amount of color injected into the gray. So 0% is a flat gray, but 100% is the most colorful color your monitor can make.
//Brightness is a number between 0 and 100. Like saturation, it’s sometimes written as a percentage. This one is fairly obvious as to what it means, but there’s a quick catch.
//0% brightness is black, no matter the hue, no matter the saturation.
//100% brightness is white only if saturation is also 0%. Otherwise, 100% brightness is just a… very bright color.
//Sound confusing? Think of it this way. Imagine Brightness is a lightbulb. 0% means the lightbulb is off (pitch black in the room). 100% means the light is on full strength.
//So maybe 100% brightness is a bright color, or, if the light is already white, then 100% brightness is pure white.
//Alright, so to review, we can describe a color with three sensible numbers:
//Hue: the color it most resembles on the color wheel, from 0° to 360°
//Saturation: how injected with color it is, from 0% to 100%
//Brightness: how much the “lightbulb” is turned on, from 0% to 100%
//In processing Hue, Saturation, and Brightness have a maximum value of 360. The fourth value is transparency and is often refferred to as Alpha (A),
//transparency (opacity) reaches values of 360 when using HSB colour mode. So a value of 360 is not transparent at all, whereas a value of 0 is completely transparent.
colorMode(HSB);
fill(30,360,360,150);

//drawing the body, a rectangle using radius mode and changing the "paintbrush" outline colour but not the inside (fill) colour.
rectMode(RADIUS);
strokeWeight(25);
stroke(0,0,0);
rect(350,190,50,50,10);

//Also, the values in colourmode, apart from mode indicate the max values
colorMode(RGB,255,255,255,255);
//I still need to figure out what the max value for transparency is, does it changebwtween RGB mode and HSB mode?

//drawing eyes and changing the "paintbrush"
//changing the rectangle drawing method to center, so that the last 2 variables indicate the width and height of the rectangle as opposed to half of the w and h like the radius method
rectMode(CENTER);
strokeWeight(2);
stroke(255,255,255);
//A fourth parameter is for transparency and is often referred to as alpha A: fill(R,G,B,A). It can
fill(255,255,0,255);
rect(370,160,5,5,3);
rect(330,160,5,5,3);

//drawing the mouth
stroke(0,255,0);
line(335,205,365,205);

//this is annotation in my code

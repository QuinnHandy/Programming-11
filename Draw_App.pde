//Quinn Handy
//Mar 7th

//Colours
color sunlit = #CFF09E;
color seafoam = #A8DBA8;
color seagreen = #79BD9A;
color seablue = #3B8686;
color seadark = #0B486B;

color red = #FF0303;
color pink = #FA6DE0;
color green = #04CE1A;
color blue = #04BFCE;
color yellow = #F9FF50;
color orange = #FFA908;

//Variables
int strokeZ;
int sliderY;
int strokeX;
int sliderCircle;
int tactileColour;
int tempStroke;
int ind;

void setup(){
  size(1000, 800);
  background(200);
  
  fill(255);
  rect(0, 125, 1000, 650);
  
  //Varibles
  strokeZ = 0;
  sliderY = 62;
  strokeX = 1;
  sliderCircle = 20;
  tactileColour = 0;
  tempStroke = 0;
  ind = 0;
  
}

void draw(){
//Tool Bar
  fill(200);
  stroke(0);
  strokeWeight(1);
  rect(0, 0, 1000, 125);
  
//Buttons
  tactile(25, 50, 25, 50, red);
  fill(red);
  square(25, 25, 25); //1-1
  
  stroke(0);
  tactile(25, 50, 75, 100, pink);
  fill(pink);
  square(25, 75, 25); //1-2
  
  stroke(0);
  tactile(125, 150, 25, 50, yellow);
  fill(yellow);
  square(125, 25, 25); //1-3
  
  stroke(0);
  tactile(75, 100, 25, 50, green);
  fill(green);
  square(75, 25, 25); //2-1
  
  stroke(0);
  tactile(75, 100, 75, 100, blue);
  fill(blue);
  square(75, 75, 25); //2-2
  
  stroke(0);
  tactile(125, 150, 75, 100, orange);
  fill(orange);
  square(125, 75, 25); //2-3
  
//StrokeWeight Slider

  stroke(0);
  fill(ind);
  line(200, 25, 200, 100);
  circle(200, sliderY, sliderCircle);
  strokeX = sliderY - 24;
  sliderCircle = strokeX / 2 + 10;
  strokeX = sliderCircle;
  fill(0);
  

}

  void mousePressed(){
    if (mouseX > 25 && mouseX < 50 && mouseY > 25 && mouseY < 50){ //Colour Selection Squares
      strokeZ = red;
    }
    if (mouseX > 25 && mouseX < 50 && mouseY > 75 && mouseY < 100){
      strokeZ = pink;
    }
    if (mouseX > 75 && mouseX < 100 && mouseY > 25 && mouseY < 50){
      strokeZ = green;
    }
    if (mouseX > 75 && mouseX < 100 && mouseY > 75 && mouseY < 100){
      strokeZ = blue;
    }
    if (mouseX > 125 && mouseX < 150 && mouseY > 25 && mouseY < 50){
      strokeZ = yellow;
    }
    if (mouseX > 125 && mouseX < 150 && mouseY > 75 && mouseY < 100){
      strokeZ = orange;
    }
  }
  
  
  void tactile(int x, int x2, int y, int y2, int colour) {
      if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(colour);
    ind = colour;
  } else {
    colour = 0;
    ind = strokeZ;
  }
  }
    
 
  
  
  
  
  
  
  void mouseDragged(){
     if (mouseX > 1 && mouseX < 1000 && mouseY > 150 && mouseY < 800) {
    stroke(strokeZ);
    strokeWeight(strokeX);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  
  
   if (mouseX > 180 && mouseX < 220 && mouseY > 25 && mouseY < 100) { //StrokeWeight Slider
      sliderY = mouseY;
    }
}
    

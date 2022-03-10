//Quinn Handy
//Mar 7th

//Colours
color sunlit = #CFF09E;
color seafoam = #A8DBA8;
color seagreen = #79BD9A;
color seablue = #3B8686;
color seadark = #0B486B;

color red = #e81123; //
color pink = #ec008c; //
color green = #009e49; //
color blue = #00188f; //
color yellow = #fff100; //
color orange = #ff8c00; //
color white = #FFFFFF;
color black = #000000;
color purple = #68217a; 
color cyan = #00bcf2; 
color teal = #00b294; 
color lime = #bad80a;


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
  
//Buttons ================================================
  tactile(25, 50, 25, 50, red);
  button(25, 25, 25, red);
  
  tactile(25, 50, 75, 100, pink);
  button(25, 75, 25, pink);

  tactile(125, 150, 25, 50, yellow);
  button(125, 25, 25, yellow);
  
  tactile(75, 100, 25, 50, green);
  button(75, 25, 25, green);
  
  tactile(75, 100, 75, 100, blue);
  button(75, 75, 25, blue);
  
  tactile(125, 150, 75, 100, orange);
  button(125, 75, 25, orange);
  
  tactile(250, 275, 25, 50, teal);
  button(250, 25, 25, teal);
  
  tactile(300, 325, 25, 50, cyan);
  button(300, 25, 25, cyan);
 
  tactile(250, 275, 75, 100, lime);
  button(250, 75, 25, lime);
  
  tactile(300, 325, 75, 100, purple);
  button(300, 75, 25, purple);
 
  

  
//StrokeWeight Slider ======================================

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
    if (mouseX > 25 && mouseX < 50 && mouseY > 25 && mouseY < 50){ //Colour Selection Squares ===================================
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
  
  
  void tactile(int x, int x2, int y, int y2, int colour) {//Tactile Button function ==============================================================
      if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(colour);
  } else {
 
    colour = 0;
    ind = strokeZ;
  }
  }
  
  void button(int x, int y, int s, int colour) { //Button function =================================================
    fill(colour);
    square(x, y, s);
    stroke(0);
  }
    
 
  
  
  
  
  
  
  void mouseDragged(){ //Draw Shit ==================================================================
     if (mouseX > 1 && mouseX < 1000 && mouseY > 150 && mouseY < 800) {
    stroke(strokeZ);
    strokeWeight(strokeX);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  
  
   if (mouseX > 180 && mouseX < 220 && mouseY > 25 && mouseY < 100) { //StrokeWeight Slider ============================================
      sliderY = mouseY;
    }
}
    

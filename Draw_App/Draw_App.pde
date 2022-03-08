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

void setup(){
  size(1000, 800);
  background(200);
  
  fill(255);
  rect(0, 125, 1000, 650);
  
  //Varibles
  strokeZ = 0;
  sliderY = 62;
  
}

void draw(){
//Tool Bar
  fill(200);
  stroke(0);
  strokeWeight(1);
  rect(0, 0, 1000, 125);
  
//Buttons
  fill(red);
  square(25, 25, 25); //1-1
  
  fill(pink);
  square(25, 75, 25); //1-2
  
  fill(yellow);
  square(125, 25, 25); //1-3
  
  fill(green);
  square(75, 25, 25); //2-1
  
  fill(blue);
  square(75, 75, 25); //2-2
  
  fill(orange);
  square(125, 75, 25); //2-3
  
//StrokeWeight Slider
  line(200, 25, 200, 100);
  circle(200, sliderY, 20);
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
  
  void mouseDragged(){
     if (mouseX > 1 && mouseX < 1000 && mouseY > 150 && mouseY < 800) {
    stroke(strokeZ);
    strokeWeight(10);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  
  
   if (mouseX > 180 && mouseX < 220 && mouseY > 5 && mouseY < 120) { //StrokeWeight Slider
      mouseY = sliderY;
    }
}
    

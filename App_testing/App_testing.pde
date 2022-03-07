//Quinn Handy
//Mar 7th

//Colours
color sunlit = #CFF09E;
color seafoam = #A8DBA8;
color seagreen = #79BD9A;
color seablue = #3B8686;
color seadark = #0B486B;


int ind;
float sliderX;
float shade;

void setup() {
  size (800, 600);
  strokeWeight(5);
  background(seadark);
  
  sliderX = 150;
  ind = seadark;
  shade = 0;
}


void draw() {
  
  stroke(seadark);
  fill(seadark);
  rect(25, 275, 250, 50);
  shade = sliderX;
  fill(shade);
  stroke(seagreen);
  line(50, 300, 250, 300);
  circle(sliderX, 300, 50);
    
    
  fill(seagreen);
  stroke(seablue);
  rect(50, 100, 200, 100);
  
  fill(ind);
  stroke(seagreen);
  //rect(300, 100, 400, 400);
  line(300, 100, 700, 100);
  line(300, 100, 300, 500);
  line(300, 500, 700, 500);
  line(700, 100, 700, 500);
  
}

void mouseDragged() {
  if (mouseX > 50 && mouseX < 250 && mouseY > 275 && mouseY < 325) {
    sliderX = mouseX;
  }
  if (mouseX > 300 && mouseX < 700 && mouseY > 100 && mouseY < 500) {
    stroke(shade);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
    
}
    



void mouseReleased() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200){
    ind = seagreen;
    
  }
}
 

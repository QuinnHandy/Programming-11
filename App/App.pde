//Quinn Handy
//March 2nd 2022
//2-3

//Pallette of colours
color aqua = #68B3AF;
color lightAqua = #87BDB1;
color seaFoam = #AACCB1;
color lightSeaFoam = #C3DBB4;
color mist = #D3E2B6;
color white = #FFFFFF;

//Selected Colours
color selectedColor;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(aqua);
  selectedColor = lightSeaFoam;
  
}

void draw() {
 background(mist);
 
   if (dist(100, 100, mouseX, mouseY) < 50){
     stroke(mist);
   } else {
     stroke(aqua);
   }
   
 
 
 fill(lightAqua);
 circle(100, 100, 100);
 
   if (dist(100, 300, mouseX, mouseY) < 50){
     stroke(mist);
   } else {
     stroke(aqua);
   }
 
 fill(seaFoam);
 circle(100, 300, 100);
 
   if (dist(100, 500, mouseX, mouseY) < 50){
     stroke(mist);
   } else {
     stroke(aqua);
   }
 
 fill(lightSeaFoam);
 circle(100, 500, 100);
 
 stroke(aqua);
 fill(selectedColor);
 square(300, 100, 400);
}


void mouseReleased() {
  if (dist(100, 100, mouseX, mouseY) < 50){
    selectedColor = lightAqua;
  }
  if (dist(100, 300, mouseX, mouseY) < 50){
    selectedColor = seaFoam;
  } 
  if (dist(100, 500, mouseX, mouseY) < 50){
    selectedColor = lightSeaFoam;
  }
}

//Quinn Handy
//March 29th 2022


//Mode Variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//Target Variables
float x, y, d;
float vx, vy; //target speed
int score, lives;





void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);  
  
  //target setup
  x = width/2;
  y = height/2;
  score = 0;
  lives = 3;
  d = 100;
  vx = random(-50, 50);
  vy = random(-50, 50);
  
  
}
  
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

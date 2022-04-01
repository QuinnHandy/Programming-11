import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


PFont font;

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

//sound Variables
Minim minim;
AudioPlayer theme, coin, bump, gameover, hehehe, cry; 
float sound;



void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);  
  
//FONTS
font = createFont("CR.ttf", 56);

  
  //target setup
  x = width/2;
  y = height/2;
  score = 0;
  lives = 3;
  d = 100;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  hehehe = minim.loadFile("hehehe.mp3");
  cry = minim.loadFile("cry.mp3");
  

  
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

//Quinn Handy
// Work on settings page
//Fix click box for play button



import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


PFont font;
PImage img, cr, battle, cr2, target, button;

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
int score, highscore, totalscore, lives;

//sound Variables
Minim minim;
AudioPlayer theme, coin, bump, gameover, hehehe, cry; 
float sound;

//Speed Variables
int Speed1, Speed2, Speed3;
int CheckSpeed;

//Slider Variables 
int sliderX = 400;
int circleSize = 125;



void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);  

  //FONTS
  font = createFont("CR.ttf", 56);
  
  //Images 
  img = loadImage("gear.png");
  cr = loadImage("cr.png");
  battle = loadImage("battle.png");
  cr2 = loadImage("cr2.png");
  target = loadImage("circle.png");
  button = loadImage("button2.png");

  //target setup
  x = width/2;
  y = height/2;
  score = 0;
  lives = 3;
  d = circleSize;

  //Movement
  Speed1 = 1;
  Speed2 = 2;
  Speed3 = 3;
  CheckSpeed = 1;

  if (CheckSpeed == Speed1) {
    vy = vy * random(1, 2);
    vx = vx * random(1, 2);
  } else if (CheckSpeed == Speed2) {
    vy = vy * random(2, 3);
    vx = vx * random(2, 3);
  } else if (CheckSpeed == Speed3) {
    vy = vy * random(2, 3);
    vx = vx * random(2, 3);
  }

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

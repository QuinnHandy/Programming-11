//Quinn Handy

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//colors
color sunlit = #CFF09E;
color seafoam = #A8DBA8;
color seagreen = #79BD9A;
color seablue = #3B8686;
color seadark = #0B486B;

int rightx, righty, rightd;
int leftx, lefty, leftd;
int ballx, bally, balld;
int tempColor = 0;

// movement variables
int vx, vy;

//keybaord variables
boolean wkey, skey, upkey, downkey;

//collision var
int rightr, leftr, ballr;

//scoring
int leftscore, rightscore, timer;




void setup() {
  size(800, 600);
  mode = INTRO;
  
  //paddleee
  leftx = -20;
  lefty = height/2;
  leftd = 200;
  
  rightx = width + 20;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //movement
  vx = 5;
  vy = 5;
  
  //keybaord
  wkey = skey = upkey = downkey = false;
  
  // collision
  rightr = rightd/2; 
  leftr = leftd/2;
  ballr = balld/2;
  
  //timer
  timer = 240;
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
    println("Mode Error:" + mode);
  }
}

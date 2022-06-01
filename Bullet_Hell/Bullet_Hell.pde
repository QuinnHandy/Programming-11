int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;

//colours
color seafoam  = #BBDCC3;
color aqua     = #BBDBDC;
color sky      = #BAD5EE;
color glacier  = #C3F5F5;
color offwhite = #EAE3EA;
color greenish = #BBDCC3;
color skyish   = #BBDBDC;
color water    = #BAD5EE;

//keyboard
boolean upkey, downkey, leftkey, rightkey, spacekey;


ArrayList<GameObject> objects;


Starfighter player1;




void setup() {
  fullScreen();
  mode = INTRO;
  rectMode(CENTER);

  player1 = new Starfighter();

  objects = new ArrayList<GameObject>();

  int i = 0;
  while (i < 100) {
    objects.add( new Star() );
    i = i + 1;
  }
}

void draw() {
       if (mode == INTRO)          intro();
  else if (mode == GAME)      game();
  else if (mode == PAUSE)     pause();
  else if (mode == GAMEOVER)  gameover();
  else println("Error: Mode = " + mode);
}

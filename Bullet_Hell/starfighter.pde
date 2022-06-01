class Starfighter extends GameObject {

  //constructor
  Starfighter() {
    x = width/2;
    y = height/2;
    vx = vy = 0;
    size = 40;
    lives = 3;
    c = greenish;
  }

  //behaviour functions
  void act() {
    super.act();

    if (upkey)    vy = -5;
    if (downkey)  vy =  5;
    if (leftkey)  vx = -5;
    if (rightkey) vx =  5;
    if (spacekey) objects.add(new Bullet());

    if (upkey == false && downkey == false)   vy = vy * 0.95;
    if (leftkey == false && leftkey == false) vx = vx * 0.95;
    
    
  }
}

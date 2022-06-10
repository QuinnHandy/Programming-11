class Starfighter extends GameObject {

  int cooldown, threshold;


  Starfighter() {
    super(width/2, height/2, 0, 0, 40, greenish, 3);
    threshold = 3;
    cooldown = threshold;
  }

  //behaviour functions
  void act() {
    super.act();

    //managing guns 
    cooldown++;
    if (spacekey && cooldown >= threshold) {
      objects.add(new Bullet(0, 10)); 
      objects.add(new Bullet(0, -10));
      objects.add(new Bullet(10, 0));
      objects.add(new Bullet(-10, 0));

      objects.add(new Bullet(10, 10)); 
      objects.add(new Bullet(10, -10));
      objects.add(new Bullet(-10, 10));
      objects.add(new Bullet(-10, -10));

      cooldown = 0;
    }

    //movement
    if (upkey)    vy = -10;
    if (downkey)  vy =  10;

    if (leftkey)  vx = -10;
    if (rightkey) vx =  10;



    if (upkey == false && downkey == false)   vy = vy * 0.9;
    if (leftkey == false && leftkey == false) vx = vx * 0.9;

    //Edges
    if (x < size/2) x = size/2;
    if (x > width - size/2) x = width - size/2;
    if (y < size/2) y = size/2;
    if (y > height - size/2) y = height - size/2;
  }
}

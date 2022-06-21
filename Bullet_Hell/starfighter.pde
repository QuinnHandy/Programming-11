class Starfighter extends GameObject {

  int cooldown, threshold;


  Starfighter() {
    super(width/2, height/2, 0, 0, 40, greenish, 100);
    threshold = 3;
    cooldown = threshold;
  }

  //behaviour functions
  void act() {
    super.act();

    //managing guns
    cooldown++;
    if (spacekey && cooldown >= threshold) {

      //different guns
      if (score <= 10) {
        objects.add(new Bullet(x, y, 0, -10));
      } else if (score < 10) {

        objects.add(new Bullet(x - 10, y, 0, -10));
        objects.add(new Bullet(x + 10, y, 0, -10));
      } else if (score < 25 || score > 24) {

        objects.add(new Bullet(x, y, 0, -10));
        objects.add(new Bullet(x - 10, y, -5, -10));
        objects.add(new Bullet(x + 10, y, 5, -10));
      }

      cooldown = 0;
    }

    //movement
    if (upkey)    vy = -7;
    if (downkey)  vy =  7;

    if (leftkey)  vx = -7;
    if (rightkey) vx =  7;



    if (upkey == false && downkey == false)   vy = vy * 0.9;
    if (leftkey == false && leftkey == false) vx = vx * 0.9;

    //Edges
    if (x < size/2) x = size/2;
    if (x > width - size/2) x = width - size/2;
    if (y < size/2) y = size/2;
    if (y > height - size/2) y = height - size/2;

    //Collsisons
    int i = 0;
    int f = 0;
    float r = random(0, 100);
    while (i < objects.size()) {
      GameObject obj = objects.get (i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--;
          if (lives == 0) mode = GAMEOVER;
          obj.lives--;


          //Particles
          while (f < 20) {
            objects.add(new Particle(x, y, random(-5, 5), random(-5, 5), greenish));

            f++;
          }

          //check lives
          //if (lives == 0) {
          //  mode = GAMEOVER;
          //}
        }
      }
      if (obj instanceof Powerup) {
        if (collidingWith(obj)) {
          if (r < 20) {
            score = score + 10;
          } else if (r < 40 && r > 20) {
            lives = lives + 5;
          } else if (r < 60 && r > 40) {
            score = score + 15;
          } else if (r < 80 && r > 60) {
            score++;
          } else if (r > 80) {
            lives++;
          }

          objects.remove(i);
        }
      }
      i++;
    }
  }
}

class Starfighter extends GameObject {

  int cooldown, threshold;


  Starfighter() {
    super(width/2, height/2, 0, 0, 40, greenish, 3);
    threshold = 20;
    cooldown = threshold;
  }

  //behaviour functions
  void act() {
    super.act();

    //ships
    typer = false;

    if (typer == true) {
      lives = 10;
      speedMultiplier = 1;
      threshold = 20;
      bulletMultiplier = 1;
      
    } else if (typer == false) {
      lives = 5;
      speedMultiplier = 1.5;
      threshold = 15;
      bulletMultiplier = 1.2;
    }

    //managing guns
    cooldown++;
    if (spacekey && cooldown >= threshold) {

      //different guns
      if (score <= 10) {
        objects.add(new Bullet(x, y, 0, -10 * bulletMultiplier));
      } else if (score > 10 && score < 26) {

        objects.add(new Bullet(x - 10, y, 0, -10 * bulletMultiplier));
        objects.add(new Bullet(x + 10, y, 0, -10 * bulletMultiplier));
      } else if (score > 25) {

        objects.add(new Bullet(x, y, 0, -10 * bulletMultiplier));
        objects.add(new Bullet(x - 10, y, -5 * bulletMultiplier, -10 * bulletMultiplier));
        objects.add(new Bullet(x + 10, y, 5 * bulletMultiplier, -10 * bulletMultiplier));
      }

      cooldown = 0;
    }

    //movement
    if (upkey)    vy = -5 * speedMultiplier;
    if (downkey)  vy =  5 * speedMultiplier;

    if (leftkey)  vx = -5 * speedMultiplier;
    if (rightkey) vx =  5 * speedMultiplier;



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

//void type1() {
//  if (typer) {
//    type = 3;
//  } else {
//    type = 5;
//  }
//}

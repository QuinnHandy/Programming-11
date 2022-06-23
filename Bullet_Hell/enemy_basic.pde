class Enemy extends GameObject {

  int cooldown, threshold, f;

  Enemy() {
    super(random(width), 0, 0, 3, 40, aqua, 1);

    threshold = 60;
    cooldown = threshold;
  }

  void show() {
    super.show();
  }

  void act() {
    super.act();

    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 7)); 


      cooldown = 0;
    }





    //collisions
    int i = 0;
    float r = random(0, 100);
    while (i < objects.size()) {
      GameObject obj = objects.get (i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives--;
          score++;  
          if (r <= 20) {
            objects.add(new Powerup(x, y));
          }

          //Particles
          while (f < 20) {
            objects.add(new Particle(x, y, random(-5, 5), random(-5, 5), aqua));

            f++;
          }
        }
      }
      i++;
    }
    //if offscrean
    if (offScreen()) lives = 0;
  }
}

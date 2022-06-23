class Sniper extends GameObject {

  int cooldown, threshold, f;

  Sniper() {
    super(random(width), 0, 0, 3, 40, green, 1);

    threshold = 120;
    cooldown = threshold;
  }

  void show() {
    super.show();
  }

  void act() {
    super.act();

    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 20)); 
      cooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get (i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives--;
          score++;

          //Particles
          while (f < 20) {
            objects.add(new Particle(x, y, random(-5, 5), random(-5, 5), green));

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

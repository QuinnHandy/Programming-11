class Tank extends GameObject {

  int cooldown, threshold, f;

  Tank() {
    super(0, random(0, height/2), 3, 0, 40, pink, 1);

    threshold = 30;
    cooldown = threshold;
  }

  void show() {
    super.show();
  }

  void act() {
    super.act();

    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 5)); 
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
            objects.add(new Particle(x, y, random(-5, 5), random(-5, 5), pink));

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

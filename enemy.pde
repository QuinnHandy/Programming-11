class Enemy extends GameObject {

  int cooldown, threshold;

  Enemy() {
    super(random(width), 0, 0, 3, 40, aqua, 1);

    threshold = 50;
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
      objects.add(new EnemyBullet(x, y, 5, 0)); 
      objects.add(new EnemyBullet(x, y, 0, -5)); 
      objects.add(new EnemyBullet(x, y, -5, 0)); 

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
        }
      }
      i++;
    }
    //if offscrean
    if (offScreen()) lives = 0;
  }
}

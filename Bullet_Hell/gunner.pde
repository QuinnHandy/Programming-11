class Gunner extends GameObject {

  int cooldown, threshold, f;

  Gunner() {
    super(random(width), 0, 0, 3, 40, yellow, 1);

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
      objects.add(new EnemyBullet(x - 10, y, 0, 5)); 
      objects.add(new EnemyBullet(x + 10, y, 0, 5)); 
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
        }
      }
      i++;
    }
    //if offscrean
    if (offScreen()) lives = 0;
  }
}

class Bullet extends GameObject {

  Bullet(float vx, float vy) {
    super(player1.x, player1.y, vx, vy, 10, #FF0000, 5);
  }
  

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}

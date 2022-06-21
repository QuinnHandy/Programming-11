class Bullet extends GameObject {

  Bullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, #FF0000, 5);
   
  }
  

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}

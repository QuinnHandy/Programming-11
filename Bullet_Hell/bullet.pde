class Bullet extends GameObject {

  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    size = 3;
    c = #FF0000;
    lives = 10;
  }
  void act() {
    super.act();
    if (y < 0 || y > height || x < 0 || x > width) lives = 0;
  }
  
  void show() {
   square(x, y, size);
  }
}

class Particle extends GameObject {


  Particle(float x, float y, float vx, float vy, color c) {
    super(x, y, vx, vy, 20, c, 1);
  }

  void act() {
    super.act();

    size--;

    if (size <= 0) lives = 0;
  }
}

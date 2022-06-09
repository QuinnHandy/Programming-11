class Star extends GameObject {

  float speed;

  Star() {
    super(random(0, width), random(0, height), 0, 0, random(1, 4), offwhite, 1);
    speed = size;
  }


  void act() {
    super.act();
    y = y + speed;
    if (y > height) {
      y = 0;
      x = random(0, width);
    }
  }
}

class Powerup extends GameObject {


  Powerup(float x, float y) {
    super(x, y, 0, 0, 40, white, 1);
  }

  void act() {
    super.act();

    size = size - 0.1;
  }
  
    void show() {
      super.show();
    }
  }

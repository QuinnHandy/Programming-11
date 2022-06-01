class Star extends GameObject{
              
  float speed;

  Star() {
    x = random(0, width);
    y = random(0, height); 
    size = random(1, 4);
    speed = size;
    c = offwhite;
    
  }
  

  void act() {
    super.act();
    y = y + speed;
    if (y > height) {
      y = 0;
      x = random(0,width);
    }
  }
  


}

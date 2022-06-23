void game() {
  fill(blue, 150);
  rect(width/2, height/2, width, height);
  noStroke();

  if (pkey) mode = PAUSE;

  addObjects();
  gameEngine();
  debug();
  
  
}





void addObjects() {

  if (frameCount % 30 == 0) {
    objects.add(new Enemy());
  }
  if (frameCount % 60 == 0 && score > 50) {
    objects.add(new Gunner());
  }
  if (frameCount % 120 == 0 && score > 20) {
    objects.add(new Sniper());
  }
  if (frameCount % 120 == 0 && score > 10) {
    objects.add(new Tank());
  }
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives <= 0 || obj.size < 1) {


      objects.remove(i);
    } else {
      i = i + 1;
    }
  }
  player1.act();
  player1.show();
}

void debug() {
  textSize(10);
  text(frameRate, 10, 10);
  text(objects.size(), 10, 30);
  text(score, 10, 50);
  text(player1.lives, 10, 70);
}

void gameclicks() {
}

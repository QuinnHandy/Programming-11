void game() {
  background(0);
  
   int i = 0;
  while (i < 100) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    i = i + 1;
  }  
  
  player1.act();
  player1.show();
}

void gameclicks() {
  
}

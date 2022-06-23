void gameover() {

  // 1st Text
  textSize(70);
  fill(offwhite);
  text("GAME OVER", width/2 - width/7, height/2);
  
  // 2nd Text
  textSize(40);
  fill(offwhite);
  text("Click to Play", width/2 - width/12, height/2 + 100);
}

void gameoverclicks() {
  mode = GAME;
}

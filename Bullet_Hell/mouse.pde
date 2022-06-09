void mousePressed() {
  if (mode == GAME) gameclicks();
  else if (mode == GAMEOVER) gameoverclicks();
  else if (mode == INTRO) introclicks();
  else if (mode == PAUSE) pauseclicks();
}

void mouseReleased() {
}

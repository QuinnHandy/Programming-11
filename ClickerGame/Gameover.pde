void gameover() {
  background(255, 255, 0);
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}

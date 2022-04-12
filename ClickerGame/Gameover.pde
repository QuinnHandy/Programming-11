int check = 0;
int on = 1;
int off = 2;

void gameover() { 
  background(255, 255, 0);
  theme.pause();
  gameover.play();

  if (score > highscore) {
    highscore = score;
  }
  // Score Indicator
  fill(0);
  textSize(70);
  textFont(font);
  text("High Score = " + highscore, 400, 200);

  fill(0);
  textSize(70);
  textFont(font);
  text("Score = " + score, 400, 300);

  fill(0);
  textSize(70);
  textFont(font);
  text("Total = " + totalscore, 400, 100);

  if (check == on) {
    totalscore = score + totalscore;
    check = off;
  } else if (check > 2 || check < 0) {
    println("Error: Check = " + check);
  }
  
  //Reset Speed
  CheckSpeed = Speed1;
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}

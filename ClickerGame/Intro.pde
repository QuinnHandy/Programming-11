void intro() {
  theme.play();


  image(cr, 0, 0);

  image(button, 250, 500);
  textSize(46);
  text("Play", 400, 635);

  fill(255);
  textSize(100);
  textFont(font);
  text("Clicker Royale", 400, 100);

  //Settings Button
  fill(255);
  strokeWeight(5);
  image(img, 725, 25);
    line(725, 25, 775, 25);
    line(725, 25, 725, 75);
    line(725, 75, 775, 75);
    line(775, 75, 775, 25);
    
  //Speed Reset
  CheckSpeed = Speed1;
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 575 && mouseY < 725) { 
    mode = GAME;
    score = 0;
    lives = 3;
    vy = 1;
    vx = 1;
  }
  if (mouseX > 725 && mouseX < 775 && mouseY > 25 && mouseY < 75) {
    mode = PAUSE;
  }
}

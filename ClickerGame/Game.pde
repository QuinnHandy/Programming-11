void game() {
  background(0, 255, 0);
  
  textSize(48);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  
  //target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x - 50 < 0 ||x + 50 > width) {
    vx = vx * -1;
  }
  if (y - 50 < 0 || y + 50 > height) {
    vy = vy * -1;
  }
  
}

void gameClicks() {
if ( dist(mouseX, mouseY, x, y) < d/2) {
  score = score + 1;
  coin.rewind();
  coin.play();
  } else {
    bump.rewind();
    bump.play();
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
  }
}

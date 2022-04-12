int ScoreOn = 1;
int ScoreOff = 2;
int CheckScore = ScoreOn;


void game() {
  check = on;
  background(0, 255, 0);

  textSize(48);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);


  //target
  fill(255);
  stroke(0);
  strokeWeight(5);
  d = circleSize;
  circle(x, y, d);

  //moving
  x = x + vx;
  y = y + vy;


  //bouncing
  if (x - d/2 < 0 ||x + d/2 > width) {
    vx = vx * -1;
  }
  if (y - d/2 < 0 || y + d/2 > height) {
    vy = vy * -1;
  }
}

void gameClicks() {
  sound = random(1, 2);
  if ( dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    coin.rewind();
    coin.play();
    vx = vx * 1.135;
    vy = vy * 1.125;
  } else {   
    miss();
  }
}





void miss() {
  lives = lives - 1;
  if (lives == 0) { 
    mode = GAMEOVER;
    CheckSpeed = Speed1;
  }
  if (sound < 1.5) {
    hehehe.rewind();
    hehehe.play();
  } else if (sound > 1.51) {
    cry.rewind();
    cry.play();
  } else {
    println("sound =" + sound);
  }
}

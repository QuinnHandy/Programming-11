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
    sound = random(1, 2);
if ( dist(mouseX, mouseY, x, y) < d/2) {
  score = score + 1;
  coin.rewind();
  coin.play();
} else {   lives = lives - 1;
}
  } else if (sound < 1.5){
    hehehe.rewind();
    hehehe.play();
    } else if (sound > 1.51) {
    cry.rewind();
    cry.play();
    } else {
      println("sound =" + sound);
        if (lives == 0) mode = GAMEOVER;
  }
}

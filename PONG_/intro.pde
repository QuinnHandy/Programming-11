void intro() {
  background(seadark);

  textSize(80);
  text("Pong Royale", 175, height/2 - 100);

  fill(tempColor);
  rect(200, 400, 400, 100);
  fill(seagreen);
  text("Play", 300, 475);

  if (mouseX > 200 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    tempColor = 255;
  } else {
    tempColor = 0;
  }
}

void introClicks() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}

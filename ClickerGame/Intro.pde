void intro()  {
  background(5, 245, 255);
  
  fill(255, 255, 255);
  rect(400, 500, 200, 100);
  fill(0);
  textSize(80);
  text("Play", 400, 485);
  
  fill(0);
  textSize(100);
  text("Clicker Royale", 400, 200);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) { 
    mode = GAME;
    lives = 3;
}
}

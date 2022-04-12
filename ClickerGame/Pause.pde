void pause() {
  background(0, 0, 255);
  image(cr2, 0, 0);

  image(button, 250, 65);
  textSize(30);
  text("Conrtols", 400, 205);

// slider
  line(300, 600, 500, 600);
  circle(sliderX, 600, 50);
  
  circle(675, 600, circleSize);
  
  //intro button
    fill(255);
  strokeWeight(5);
  image(img, 725, 25);
    line(725, 25, 775, 25);
    line(725, 25, 725, 75);
    line(725, 75, 775, 75);
    line(775, 75, 775, 25);
  
  println("sliderSize =" + circleSize);
}

void pauseClicks() {
  if (mouseX > 725 && mouseX < 775 && mouseY > 25 && mouseY < 75) {
    mode = INTRO;
  }
}

void pauseDragged() {
    if (mouseX < 500 && mouseX > 300 && mouseY < 650 && mouseY > 550) {
    sliderX = mouseX;
    circleSize = sliderX - 275;
  }
}

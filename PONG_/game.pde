void game() {
  background(0);


  //scoreboard
  textSize(50);
  fill(sunlit);
  text(leftscore, width/4, 100);
  fill(seafoam);
  text(rightscore, 3*width/4, 100);
  timer = timer - 1;

  if (timer > 60) {
    text("Countdown   " + timer/60, 230, 200);
  }


  //draw paddles
  fill(255);
  circle(-10, lefty, leftd);
  circle(width + 10, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;

  //ball
  circle(ballx, bally, balld);

  //movement
  if (timer < 60) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 240;
    righty = height/2;
    lefty = height/2;
  }
  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 240;
    righty = height/2;
    lefty = height/2;
  }
  //limiting paddles
  if (righty < rightd/2) {
    righty = rightd/2;
  }
  if (righty > height - rightd/2) {
    righty = height - rightd/2;
  }
  if (lefty < leftd/2) {
    lefty = leftd/2;
  }
  if (lefty > height - leftd/2) {
    lefty = height - leftd/2;
  }

  //limiting ball
  if (bally < balld/2) {
    bally = balld/2;
    vy = vy * -1;
  }
  if (bally > height - balld/2) {
    bally = height - balld/2;
    vy = vy * -1;
  }

  //walls
  if (bally < ballr) vy = vy * -1;
  if (bally > 600 - ballr) vy = vy * -1;

  //collision
  if (dist(rightx, righty, ballx, bally) <= rightr + ballr) {
    vx = (ballx - rightx)/15; // divid all by 15
    vy = (bally - righty)/15;
  }
  if (dist(leftx, lefty, ballx, bally) <= leftr + ballr) {
    vx = (ballx - leftx)/15;
    vy = (bally - lefty)/15;
  }
}

void gameClicks() {
}

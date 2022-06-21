void keyPressed() {
  if (keyCode == LEFT)  leftkey  = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == UP)    upkey    = true;
  if (keyCode == DOWN)  downkey  = true;
  if (key == ' ')       spacekey = true;
  if (key == 'p')       pkey     = true;
}

void keyReleased() {
  if (keyCode == LEFT)  leftkey  = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == UP)    upkey    = false;
  if (keyCode == DOWN)  downkey  = false;
  if (key == ' ')       spacekey = false;
  if (key == 'p')       pkey     = false;
}

void pause() {
  textSize(60);
   text("Paused", width/2, height/2);
  
  int i = 0;
  while (i < 1) {
  fill(255, 255, 255, 1);
  rect(width/2, height/2, width, height);
  
  
  i++;
  }
  
  ////text 
  //text("Paused", width/2, height/2);
  
  if(pkey) {
    mode = GAME;
  }  
  
}

void pauseclicks() {
}

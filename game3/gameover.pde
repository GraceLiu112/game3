void gameover(){
  theme.play();
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if(f == numberOfFrames) f = 0;
  fill(0);
  textSize(80);
  if (lives == 0) {
    text("YOU LOST!", 400, 220);
  }
  if (score == 21) {
    text("YOU WON!", 400, 220);
  }
  if(mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 390){
    fill(255);
  }
  else{
    fill(0);
  }
  textSize(30);
  text("<click to restart>", 395, 350);
}


void gameoverClicks(){
  if(mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 390){
    lives = 3;
    score = 0;
    bx = width/2;
    by = height - 200;
    px = width/2;
    py = height;
    vx = 0;
    vy = 1;
    n = 21;
    x = new int[n];
    y = new int[n];
    alive = new boolean[n];
    tempx = 100;
    tempy = 50;
    int i = 0;
    while(i < n){
      x[i] = tempx;
      y[i] = tempy;
      alive[i] = true;
      tempx = tempx + 100;
      if(tempx == width){
        tempx = 100;
        tempy = tempy + 70;
      }
      i = i + 1;
    }
    theme.rewind();
    mode = INTRO;
  }
}

void game(){
  theme.play();
  background(darkblue);
  fill(lightblue);
  textSize(30);
  text("Lives: " + lives, 100, 450);
  text("Score: " + score, 700, 450);
 
  //paddle
  fill(255);
  circle(px, py, pd);
  if (akey) px = px - 5;
  if (dkey) px = px + 5;
  if(px < pd/2){
    px = pd/2;
  }
  if(px > width - pd/2){
    px = width - pd/2;
  }
  
  //ball
  fill(255);
  circle(bx, by, bd);
  bx = bx + vx;
  by = by + vy;
  
  //bouncing
  if(dist(bx, by, px, py) < bd/2 + pd/2){
    vx = (bx - px)/10;
    vy = (by - py)/10;
  }
  if(by < bd/2){
    vy = vy * -1;
  }
  if (by > height + bd/2) {
  lives = lives - 1;
  bx = width/2;
  by = height - 200;
  vx = 0;
  vy = 1;
    if (lives == 0) {
      mode = GAMEOVER;
    }
  }
  
  if(bx < bd/2 || bx > width - bd/2){
    vx = vx * -1;
  }
  
  //bricks  
  int i = 0;
  while(i < n){
    if(alive[i] == true){
      manageBrick(i);
    }
    i++;
  }
}

void gameClicks(){
  mode = PAUSE;
}

void manageBrick(int i){
    if(y[i] == 50) fill(pink);
    if(y[i] == 120) fill(purple);
    if(y[i] == 190) fill(orange);
    if(y[i] == 260) fill(lightblue);
    circle(x[i], y[i], brickd);
    if(dist(bx, by, x[i], y[i]) < bd/2 + brickd/2){
      vx = (bx - x[i])/10;
      vy = (by - y[i])/10;
      alive[i] = false;
      score++;
      if(score == 21){
        mode = GAMEOVER;
      }
    }  
}

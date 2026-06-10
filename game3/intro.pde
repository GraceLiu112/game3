void intro(){
  theme.play();
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if(f == numberOfFrames) f = 0;
  fill(0);
  textSize(80);
  text("Breackout", 400, 220); 
  if(mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 390){
    fill(255);
  }
  else{
    fill(0);
  }
  textSize(30);
  text("<Click to start>", 395, 350);
  
}

void introClicks(){
  if(mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 390){
    mode = GAME;
  }
}

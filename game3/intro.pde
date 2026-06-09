void intro(){
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

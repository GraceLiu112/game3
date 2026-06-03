color pink = #EA87BC;
color purple = #BC87EA;
color darblue = #2A6CAF;
color lightblue = #9ADAF2;
color orange = #F7BB5F;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

float a;
float bx, by, bd, vx, vy, px, py, pd;
boolean akey, bkey;
int x, y;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  noStroke();
  mode = INTRO;
  
  bx = width/2;
  by = height - 200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;
}

draw(){

}

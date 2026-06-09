color pink = #EA87BC;
color purple = #BC87EA;
color darkblue = #153874;
color lightblue = #9ADAF2;
color orange = #F7BB5F;

//animation
PImage[] gif;
int numberOfFrames;
int f;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

float a;
float bx, by, bd, vx, vy, px, py, pd;
boolean akey, dkey;
int[] x;
int[] y;
int n;

int brickd;

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
  n = 7;
  x = new int[n];
  y = new int[n];
  x[0] = 100;
  y[0] = 50;
  x[1] = 200;
  y[1] = 50;
  x[2] = 300;
  y[2] = 50;
  x[3] = 400;
  y[3] = 50;
  x[4] = 500;
  y[4] = 50;
  x[5] = 600;
  y[5] = 50;
  x[6] = 700;
  y[6] = 50;
  
   brickd = 40;
  
  //animation
  numberOfFrames = 76;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while(i < numberOfFrames){
    gif[i] = loadImage("frame_" + i + "_delay-0.06s.gif");
    i = i + 1;
  }
  size(800, 500);
}

void draw(){
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if(f == numberOfFrames) f = 0;
   if(mode == INTRO){
    intro();
  }
  else if(mode == GAME){
    game();
  }
  else if(mode == PAUSE){
    pause();
  }
  else if(mode == GAMEOVER){
    gameover();
  }
  else{
    println("Error: Mode = " + mode);
  }

}

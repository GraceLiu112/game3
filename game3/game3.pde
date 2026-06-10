import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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

// sound variables
Minim minim;
AudioPlayer theme;

float a;
float bx, by, bd, vx, vy, px, py, pd;
boolean akey, dkey;
int[] x;
int[] y;
boolean[] alive;
int n;
int tempx, tempy;

int brickd;

int lives;
int score;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  noStroke();
  mode = INTRO;
  
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  
  bx = width/2;
  by = height - 200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;
  n = 21;
  lives = 3;
  score =0;
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
  
  brickd = 40;
  i = 0;
  //animation
  numberOfFrames = 76;
  gif = new PImage[numberOfFrames];
  while(i < numberOfFrames){
    gif[i] = loadImage("frame_" + i + "_delay-0.06s.gif");
    i = i + 1;
  }
  size(800, 500);
}

void draw(){
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

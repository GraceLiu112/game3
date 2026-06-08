PImage[] gif;
int numberOfFrames;
int f;
void setup(){
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
}

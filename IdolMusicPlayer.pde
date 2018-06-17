import processing.sound.*;

SoundFile GFriend, RedVelvet, LuisFonsi, MCTheMax;
PImage GFriend1, RedVelvet1, LuisFonsi1, MCTheMax1;
FFT fft;
AudioDevice device;

Menu main = new Menu();
Play player = new Play();
int stage = 0;
int music;
boolean musicPlaying = false;

int scale = 5;
int bands = 128;
float r_width = width/float(bands);
float[] sum = new float[bands];
float smooth_factor = 0.2;


void setup() {
  size(640, 360);
  GFriend = new SoundFile(this, "GFriend.mp3");
  RedVelvet = new SoundFile(this, "RedVelvet.mp3");
  LuisFonsi = new SoundFile(this, "LuisFonsi.mp3");
  MCTheMax = new SoundFile(this, "MCTheMax.mp3");
  GFriend1 = loadImage("GFriend.png");
  RedVelvet1 = loadImage("RedVelvet.png");
  LuisFonsi1 = loadImage("LuisFonsi.png");
  MCTheMax1 = loadImage("MCTheMax.png");
  
  fft = new FFT(this, bands);
  device = new AudioDevice(this, 44000, bands);
}

void draw() {
  switch(stage) {
  case 0:
    main.menuExecute();
    break;
  case 1:
    if (!musicPlaying) {
      background(100, 100, 100);
      textSize(20);
      text("Press the screen to initialize", 180, 180);
    }
    if (musicPlaying) {
      player.nowPlaying();
    }
  }
}

void mousePressed() {
  if (!musicPlaying && stage==1) {
    if (music==1) {
      GFriend.loop();
      fft.input(GFriend);
    } else if (music==0) {
      RedVelvet.loop();
      fft.input(RedVelvet);
    } else if (music==2) {
      LuisFonsi.loop();
      fft.input(LuisFonsi);
    } else if (music==3) {
      MCTheMax.loop();
      fft.input(MCTheMax);
    }
    musicPlaying = true;
  }
}
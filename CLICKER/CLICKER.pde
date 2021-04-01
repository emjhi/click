//Emma Sun
//1.4A
//March 8, 2021

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer start, error, click, theme, coin, gameover;

//variables
int mode;
final int INTRO = 0;
final int OPTIONS = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
PImage starting;
PImage settings;
PImage lost;
PFont pixel;
float sliderY;
float circle;


//target1
PImage target1;
boolean target1On;

//target2
PImage target2;
boolean target2On;

//image variable
PImage selectedImage;


//game variables
float x, y, d;
float vx, vy; // target velocities
int score, lives;
int highscore;

void setup() {
  size(600, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  //TARGET INITALIZATION
  x = width/2;
  y = height/2;
  d = 100; 
  vx = random(2, -2);
  vy = random(-2, 2);
  score = 0;
  lives = 3;
  starting = loadImage("start.jpg");
  settings = loadImage("settings.png");
  target1 = loadImage("screensaver1.jpg");
  target2 = loadImage("screensaver2.jpg");
  lost = loadImage("error.jpg");
  pixel = createFont("pixelmix.ttf", 65);


  //minim
  minim = new Minim(this);
  start = minim.loadFile("start.mp3");
  click = minim.loadFile("click.wav");
  error = minim.loadFile("error.mp3");
  theme = minim.loadFile("overcooked.mp3");
  coin = minim.loadFile("coin.wav");
  gameover = minim.loadFile("gameover.mp3");

  sliderY = 160;
  
  selectedImage = target1;
  
  //target
  target1On = false;
  target2On = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

void reset() {
  //target
  x = x + vx;
  y = y + vy;
  d = d;
  vx = random(2, -2);
  vy = random(-2, 2);
  
  //game
  score = 0;
  lives = 3;
  sliderY = 160;
}

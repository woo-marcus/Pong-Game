//Marcus Woo
//1-4B
//April 19, 2021

//Pong Project

//Hi, Mr. Pelletier. These are links of the resources I used:
  //Fonts:
    //I used the "Retro Gaming" font: www.dafont.com/retro-gaming.font)
  //Images
    //User image for singleplayer/multiplayer buttons (intro screen): www.flaticon.com/free-icon/user_1077114?term=user&page=1&position=2&page=1&position=2&related_id=1077114&origin=search
    //Gear image for options button (intro screen): www.flaticon.com/free-icon/gear-option_17789?term=options&page=1&position=8&page=1&position=8&related_id=17789&origin=search
    //Arrow image for back button (options screen): www.flaticon.com/free-icon/left-arrow_271220?term=back&page=1&position=5&page=1&position=5&related_id=271220&origin=search
    //Controller image for controls button (options screen): www.flaticon.com/free-icon/games_13973?term=controller&page=1&position=4&page=1&position=4&related_id=13973&origin=search
    //Infinity image for infinite lives button (options screen): https://www.flaticon.com/free-icon/infinity_565742?term=infinity&page=1&position=1&page=1&position=1&related_id=565742&origin=search
    //Colour palette image for colour selection button (controls screen): www.flaticon.com/free-icon/art-palette_103461?term=paint%20palette&page=1&position=37&page=1&position=37&related_id=103461&origin=search
    //Arrow image for arrow keys (controls screen): iconsplace.com/white-icons/arrow-icon-18/
    //Restart arrow for return button (gameover screen): www.flaticon.com/free-icon/return_484189?term=return&page=1&position=4&page=1&position=4&related_id=484189&origin=search
    //Exit image for quite button (gameover screen): www.flaticon.com/free-icon/exit_1286853?term=exit&page=1&position=5&page=1&position=5&related_id=1286853&origin=search
  //Music:
    //Chill Wave by Kevin MacLeod
      //Link: https://incompetech.filmmusic.io/song/3498-chill-wave
      //License: https://filmmusic.io/standard-license
    //Airport Lounge by Kevin MacLeod
      //Link: https://incompetech.filmmusic.io/song/3347-airport-lounge
      //License: https://filmmusic.io/standard-license
  //Sounds:
    //[Ping pong ball] hit sound: freesound.org/people/michorvath/sounds/269718/
    //point sound: freesound.org/people/Piotr123/sounds/474064/
    //blip sound: freesound.org/people/NoiseCollector/sounds/4359/
    //click sound: freesound.org/people/complex_waveform/sounds/213148/
    //startGame sound: freesound.org/people/pumodi/sounds/150222/
    //loseTheme sound: I used the same music that I did for the clicker game (which you posted on MS Teams)
    //winTheme sound: freesound.org/people/HenryRichard/sounds/448266/
    
//---------------------------------------------------------------------------------------------------------
    
//minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
    
//mode framework
int mode;
final int INTRO = 1;
final int OPTIONS = 2;
final int CONTROLS = 3;
final int GAME = 4;
final int PAUSE = 5;
final int GAMEOVER = 6;

//font variables
PFont retroGaming;

//image variables
PImage user;
PImage options;
PImage backArrow;
PImage controller;
PImage colourPalette;
PImage infinity;
PImage keyArrow;
PImage restartArrow;
PImage exitArrow;

//audio variables
Minim minim;
AudioPlayer hit;
AudioPlayer point;
AudioPlayer startGame;
AudioPlayer click;
AudioPlayer blip;
AudioPlayer introTheme;
AudioPlayer optionsTheme;
AudioPlayer loseTheme;
AudioPlayer winTheme;
boolean soundOn;//triggering the mute function turns this variable on/off

//colour variables
color black = #000000;
color purple = #524656;
color blue = #547980;
color red = #D31900;
color green = #7CB490;
color yellow = #FCD14D;
color leftColour;//the default colour of the left paddle (red)
color rightColour;//the default colour of the left paddle (black)
boolean leftblackOn, leftpurpleOn, leftblueOn, leftgreenOn, leftredOn, leftyellowOn;//please see "OPTIONS" page
boolean rightblackOn, rightpurpleOn, rightblueOn, rightgreenOn, rightredOn, rightyellowOn;//please see "OPTIONS" page

//entity variables (left paddle, right paddle, ball)
float leftX, leftY, leftD;//position/size of the left paddle
float rightX, rightY, rightD;//position/size of the right paddle
float ballX, ballY, ballD;
float ballVX, ballVY;

//score variables
int leftScore;
int rightScore; 
int timer;

//keyboard variables
boolean wKey, sKey, upKey, downKey;

//text variables
int titleTransparency;//represents the transparency of the title
int titleTransparencyAdjust;//represents the amount by which the transparency of the title increases/decreases
int gameoverX;//represents the horizontal position of the "GAMEOVER" text
int gameoverVX;//represents the horizontal movement of the "GAMEOVER" text

//other variables
boolean AI;
boolean pauseOn;//allows for the activation of the pause mode
boolean oneOn, threeOn, fiveOn, tenOn, infinityOn;//please see "OPTIONS" page
int totalPoints;


void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
  mode = INTRO;
  reset();//please see the definition of this function the "UTILITIES" page
 
  //font variables
  retroGaming = createFont("Retro Gaming.ttf", 50);
  titleTransparency = 255;
  titleTransparencyAdjust = -1;
  
  //image variables
  user = loadImage("user.png");
  options = loadImage("gear.png");
  backArrow = loadImage ("left-arrow.png");
  colourPalette = loadImage("art-palette.png");
  controller = loadImage("games.png");
  infinity = loadImage("infinity.png");
  keyArrow = loadImage("right-arrow.png");
  restartArrow = loadImage("return.png");
  exitArrow = loadImage("exit.png");
  
  //sound variables
  minim = new Minim(this);
  hit = minim.loadFile("pingponghit.wav");
  point = minim.loadFile("pointbeep.wav");
  startGame = minim.loadFile("gameclick.mp3");
  click = minim.loadFile("click.wav");
  blip = minim.loadFile("blip.wav");
  introTheme = minim.loadFile("chillwave.mp3");
  optionsTheme = minim.loadFile("airportlounge.mp3");
  loseTheme = minim.loadFile("gameover.wav");
  winTheme = minim.loadFile("win.wav");

  //colour variables
  leftblackOn = false;
  leftpurpleOn = false;
  leftblueOn = false;
  leftredOn = true;
  leftgreenOn = false;
  leftyellowOn = false;
  leftColour = red;
  rightblackOn = true;
  rightpurpleOn = false;
  rightblueOn = false;
  rightredOn = false;
  rightgreenOn = false;
  rightyellowOn = false;
  rightColour = black;
  
  //other variables
  oneOn = false;
  threeOn = true;//by default, the game is set to end when three points are achieved by one of the players
  fiveOn = false;
  tenOn = false;
  infinityOn = false;
  soundOn = true;
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == CONTROLS) {
    controls();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

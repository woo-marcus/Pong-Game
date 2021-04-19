void reset(){ 
  leftX = 0;
  leftY = height/2;
  leftD = 200;
  
  rightX = width;
  rightY = height/2;
  rightD = 200;
  
  ballX = width/2;
  ballY = height/2;
  ballD = 100;
  
  ballVX = 10;
  ballVY = -10;
  timer = 50;
  
  leftScore = 0;
  rightScore = 0;
  
  wKey = sKey = upKey = downKey = false;
  
  gameoverX = 400;
  gameoverVX = 3;
  
  pauseOn = false;//by default, the pause mode is not activated
}


void tactileFillRect(int x, int y, int width, int height, int r1, int g1, int b1, int r2, int g2, int b2, int t){//if the mouse is hovering over this rectangle, it turns a different colour
  if(mouseX > x && mouseX < x+width && mouseY > y && mouseY < y+height){
    fill(r2, g2, b2, t);
  } else {
    fill(r1, g1, b1);
  }
}

void tactileStrokeRect(int x, int y, int width, int height, int r1, int g1, int b1, int r2, int g2, int b2){//if the mouse is hovering over this rectangle, its border turns a different colour
  if(mouseX > x && mouseX < x+width && mouseY > y && mouseY < y+height){
    stroke(r2, g2, b2);
  } else {
    stroke(r1, g1, b1);
  }
}

void startGameSound(){//mutes the sound if soundOn = false (i.e. if the mute function is activated); all the functions below have this same purpose but for different sounds
  if(soundOn == false){
    startGame.pause();
  } else {
    startGame.play();
    startGame.rewind();
  }
}

void clickSound(){
  if(soundOn == false){
    click.pause();
  } else {
    click.play();
    click.rewind();
  }
}

void blipSound(){
  if(soundOn == false){
    blip.pause();
  } else {
    blip.play();
    blip.rewind();
  }
}

void winThemeSound(){
  if(soundOn == false){
    winTheme.pause();
  } else {
    winTheme.play();
  }
}

void loseThemeSound(){
  if(soundOn == false){
    loseTheme.pause();
  } else {
    loseTheme.play();
  }
}

void hitSound(){
  if(soundOn == false){
    hit.pause();
  } else {
    hit.play();
    hit.rewind();
  }
}

void pointSound(){
  if(soundOn == false){
    point.pause();
  } else {
    point.play();
    point.rewind();
  }
}

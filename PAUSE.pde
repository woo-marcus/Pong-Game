void pause() {
  fill(255);
  textFont(retroGaming);
  textSize(75);
  text("PAUSED", 400, 250);
  textSize(30);
  text("Press P to unpause", 400, 325);
  
  if(pauseOn == false){//if pauseOn is turned off, then the user is returned to the "GAME" mode
    mode = GAME;
  } 
}

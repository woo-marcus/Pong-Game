void intro() {
  background(65,61,61);
  
  if(soundOn == false){
    introTheme.pause();
  } else {
    introTheme.play();
  }
  
  //title
  textFont(retroGaming);
  textSize(100);
  fill(255, 255, 255, titleTransparency);
  text("PONG!", 400, 200);
  titleTransparency = titleTransparency + titleTransparencyAdjust*2;//the transparency of the title changes over time
  if(titleTransparency < 40){
    titleTransparencyAdjust = titleTransparencyAdjust * -1;
  }
  if(titleTransparency > 255){
    titleTransparencyAdjust = titleTransparencyAdjust * -1;
  }
  
  //single player button
  strokeWeight(10);
  stroke(0);
  fill(255);
  tactileStrokeRect(195, 375, 115, 115, 0, 0, 0, 161, 0, 16);
  rect(195, 375, 115, 115);
  image(user, 215, 395, 75, 75);
  
  //multi player button
  tactileStrokeRect(340, 375, 115, 115, 0, 0, 0, 161, 0, 16);
  rect(340, 375, 115, 115);
  image(user, 345, 410, 65, 65);
  image(user, 385, 395, 65, 65);
  
  //options button
  tactileStrokeRect(485, 375, 115, 115, 0, 0, 0, 161, 0, 16);
  rect(485, 375, 115, 115);
  image(options, 505, 395, 75, 75);
}


void introClicks() {
  if(mouseX > 195 && mouseX < 310 && mouseY > 375 && mouseY < 490){//if the singleplayer button is pressed, the user enters the "GAME" mode without the AI player
    startGameSound();
    mode = GAME;
    AI = false;//AI is turned off for multiplayer mode
  }
  if(mouseX > 340 && mouseX < 455 && mouseY > 375 && mouseY < 490){//if the multiplayer button is pressed, the user enters the "GAME" mode with the AI player
    startGameSound();
    mode = GAME;
    AI = true;//AI is turned on for multiplayer mode
  }
  if(mouseX > 485 && mouseX < 600 && mouseY > 375 && mouseY < 490){//if the options button is pressed, the user is brought to the "OPTIONS" mode
    clickSound();
    mode = OPTIONS;
  }
}

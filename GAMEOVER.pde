void gameover() {
  background(153,24,24);
  
  if(AI == true && rightScore > leftScore){
    loseThemeSound();
  } else {
    winThemeSound();
  }
  if(AI == false){
    winThemeSound();
  }
  
  //title
  if(leftScore > rightScore){//if the left paddle wins
    textFont(retroGaming);
    textSize(75);
    fill(255);
    text("LEFT WINS!", gameoverX, 250);
    timer = timer - 1;
    if(timer < -50){//after 50 frames, the title will begin bouncing horizontally between the edges of the screen
      gameoverX = gameoverX + gameoverVX;
      if(gameoverX > 550 || gameoverX < 245){
        gameoverVX = gameoverVX * -1;
      }
    }
  } else {//if the right paddle wins
    textFont(retroGaming);
    textSize(75);
    fill(255);
    text("RIGHT WINS!", gameoverX, 250);
    timer = timer - 1;
    if(timer < -50){//after 50 frames, the title will begin bouncing horizontally between the edges of the screen
      gameoverX = gameoverX + gameoverVX;
      if(gameoverX > 525 || gameoverX < 270){
        gameoverVX = gameoverVX * -1;
      }
    }
  }
  
  //restart button
  fill(0);
  strokeWeight(5);
  stroke(0);
  rect(30, 470, 100, 100, 25);
  tactileFillRect(30, 470, 100, 100, 201, 209, 211, 201, 209, 211, 225);
  rect(30, 470, 100, 100, 25);
  image(restartArrow, 45, 485, 65, 65);
  
  //exit button
  fill(0);
  rect(670, 470, 100, 100, 25);
  tactileFillRect(670, 470, 100, 100, 201, 209, 211, 201, 209, 211, 225);
  rect(670, 470, 100, 100, 25);
  image(exitArrow, 690, 490, 65, 65);
}


void gameoverClicks() {
  if(mouseX > 30 && mouseX < 130 && mouseY > 470 && mouseY < 570){//if the restart button is pressed, the user is returned to the intro screen, and the program also resets/pauses/plays a few audio files
    loseTheme.pause();
    winTheme.pause();
    loseTheme.rewind();
    winTheme.rewind();
    introTheme.rewind();
    introTheme.play();
    optionsTheme.rewind();
    mode = INTRO;
    reset();
  }
  if(mouseX > 670 && mouseX < 770 && mouseY > 470 && mouseY < 570){//if the exit button is pressed, the program quits
    exit();
  }
}

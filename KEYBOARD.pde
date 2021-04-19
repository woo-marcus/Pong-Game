void keyPressed() {
  if(key == 'w' || key == 'W') wKey = true;//*make sure to use SINGLE quotes, not DOUBLE quotes, when describing a letter on the keyboard
  if(key == 's' || key == 'S') sKey = true;
  
  if(keyCode == UP) upKey = true;//*"keyCode" is used for keyboard symbols that cannot be typed (.e. arrow keys)
  if(keyCode == DOWN) downKey = true;
}  


void keyReleased() {
  if(key == 'w' || key == 'W') wKey = false;
  if(key == 's' || key == 'S') sKey = false;
  
  if(keyCode == UP) upKey = false;
  if(keyCode == DOWN) downKey = false;
  
  if(key == 'p' || key == 'P') pauseOn = !pauseOn;//clicking P/p while in the game mode pauses the game
  
  if(key == 'q' || key == 'Q') exit();//clicking Q/q in mode exits the program
  
  if(mode == GAMEOVER){
    if(key == 'r' || key == 'R'){//clicking R/r returns to the intro screen when in the gameover mode, and the program also resets/pauses/plays a few audio files
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
  }
  
  if(key == 'm' || key == 'M') soundOn = !soundOn;//pressing M/m mutes all audio
}

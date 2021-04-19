void mouseReleased() {
 if (mode == INTRO) {
    introClicks();
  } else if (mode == OPTIONS){
    optionsClicks();
  } else if (mode == CONTROLS){
    controlClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } 
}

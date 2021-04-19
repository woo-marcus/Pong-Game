void controls(){
  background(161,171,196);
  
  if(soundOn == false){
    optionsTheme.pause();
  } else {
    optionsTheme.play();
  }
  
  //title
  fill(0);
  textFont(retroGaming);
  textSize(45);
  text("CONTROLS", 400, 40);
  
  //back (to options) button
  strokeWeight(5);
  stroke(0);
  tactileFillRect(0, 0, 75, 75, 206, 212, 221, 206, 212, 221, 150);
  rect(0, 0, 75, 75);
  image(options, 14.5, 14.5, 45, 45);
  
  //keyboard keys (not letters) for left paddle controls and other letter-activated functions
  fill(0);
  textSize(40);
  text("LEFT", 215, 140);
  strokeWeight(5);
  stroke(65,61,61);
  fill(0);
  //w key
  rect(180, 190, 70, 70, 15);
  //a key
  rect(100, 270, 70, 70, 15);
  //s key
  rect(180, 270, 70, 70, 15);
  //d key
  rect(260, 270, 70, 70, 15);
  //p key
  rect(85, 410, 70, 70, 15);
  //r key
  rect(85, 510, 70, 70, 15);
  //q key
  rect(455, 410, 70, 70, 15);
  //m key
  rect(455, 510, 70, 70, 15);
  
  //keyboard letters 
  fill(255);
  textSize(40);
  text("W", 205, 210);
  text("A", 122.5, 290);
  text("S", 202.5, 290);
  text("D", 282.5, 290);
  text("P", 110, 430);
  text("R", 110, 530);
  text("Q", 477.5, 430);
  text("M", 477.5, 530);
  
  //text describing functions of the four keys at the bottom of the page
  fill(0);
  textSize(40);
  text("PAUSE", 265, 440);
  text("RESET", 265, 540);
  text("QUIT", 635, 440);
  text("MUTE", 635, 540);
  
  //keyboard keys for right paddle controls
  fill(0);
  textSize(40);
  text("RIGHT", 585, 140);
  //up arrow key
  rect(550, 190, 70, 70, 15);
  //left arrow key
  rect(470, 270, 70, 70, 15);
  //down arrow key
  rect(550, 270, 70, 70, 15);
  //right arrow key
  rect(630, 270, 70, 70, 15);
  
  //arrow signs
  //right arrow (original image)
  image(keyArrow, 640, 275, 35, 30);
  //left arrow
  pushMatrix();
  translate(510, 305);
  rotate(radians(180));
  image(keyArrow, 0, 0, 35, 30);
  popMatrix();
  //bottom arrow
  pushMatrix();
  translate(585, 280);
  rotate(radians(90));
  image(keyArrow, 0, 0, 35, 30);
  popMatrix();
  //top arrow
  pushMatrix();
  translate(555, 230);
  rotate(radians(270));
  image(keyArrow, 0, 0, 35, 30);
  popMatrix();  
}

void controlClicks(){
  if(mouseX >  0 && mouseX < 75 && mouseY > 0 && mouseY < 75){//if the back button is clicked, the user is returned to the "OPTIONS" mode
    clickSound();
    mode = OPTIONS;
  }
}

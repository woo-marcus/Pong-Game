void options(){
  background(161,171,196);
  
  introTheme.pause();
  if(soundOn == false){
    optionsTheme.pause();
  } else {
    optionsTheme.play();
  }
  
  //title
  fill(0);
  textSize(45);
  text("OPTIONS", 400, 40);
  
  //back (to intro) button
  strokeWeight(5);
  stroke(0);
  tactileFillRect(0, 0, 75, 75, 206, 212, 221, 206, 212, 221, 150);
  rect(0, 0, 75, 75);
  image(backArrow, 7.5, 13, 55, 45);
  
  //(go to) controls mode button
  tactileFillRect(725, 0, 75, 75, 206, 212, 221, 206, 212, 221, 150);
  rect(725, 0, 75, 75);
  image(controller, 737, 12, 55, 55);
  
  //left paddle colour selection
  textSize(50);
  fill(black);
  text("LEFT", 150, 145);
    //black button
  if(leftblackOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(75, 205, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  rect(75, 205, 65, 65);
    //purple button
  if(leftpurpleOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(155, 205, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(purple);
  rect(155, 205, 65, 65);
    //blue button
  if(leftblueOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(75, 285, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(blue);
  rect(75, 285, 65, 65);
    //red button
  if(leftredOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(155, 285, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(red);
  rect(155, 285, 65, 65);
    //green button
  if(leftgreenOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(75, 365, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(green);
  rect(75, 365, 65, 65);
    //yellow button
  if(leftyellowOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(155, 365, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(yellow);
  rect(155, 365, 65, 65);
    //colour indicator
  stroke(0);
  fill(226,205,154);
  rect(132.5, 530, 25, 65, 10);
  fill(leftColour);
  ellipse(145, 510, 100, 90);
  
  
  //right paddle colour selection
  strokeWeight(5);
  textSize(45);
  fill(0);
  text("RIGHT", 400, 145);
    //black button
  if(rightblackOn == true){
    stroke(153,24,24);//if this button is chosen, its border turns red until it a different button is chosen; if not chosen, then tactileStrokeRect will be activated (stroke changes whenever the mouse hovers over the button)  
  } else {
    tactileStrokeRect(320, 205, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  rect(320, 205, 65, 65);
    //purple button
  if(rightpurpleOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(400, 205, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(purple);
  rect(400, 205, 65, 65);
    //blue button
  if(rightblueOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(320, 285, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(blue);
  rect(320, 285, 65, 65);
    //red button
  if(rightredOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(400, 285, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(red);
  rect(400, 285, 65, 65);
    //green button
  if(rightgreenOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(320, 365, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(green);
  rect(320, 365, 65, 65);
    //yellow button
  if(rightyellowOn == true){
    stroke(153,24,24);
  } else {
    tactileStrokeRect(400, 365, 65, 65, 0, 0, 0, 206, 212, 221);
  }
  fill(yellow);
  rect(400, 365, 65, 65);
    //colour indicator
  stroke(0);
  fill(226,205,154);
  rect(377.5, 530, 25, 65, 10);
  fill(rightColour);
  ellipse(390, 510, 100, 90);
  
  //total points selection
  fill(0);
  textSize(40);
  text("POINTS", 650, 200);
  stroke(0);
    //1 point button
  if(oneOn == true){
    stroke(153,24,24);
  } else {
    stroke(0);
  }
  tactileFillRect(615, 250, 70, 50, 255, 255, 255, 255, 255, 255, 150);
  rect(615, 250, 70, 50);
  fill(0);
  textSize(40);
  text("1", 650, 270);
    //3 points button
  if(threeOn == true){
    stroke(153,24,24);
  } else {
    stroke(0);
  }
  tactileFillRect(615, 310, 70, 50, 255, 255, 255, 255, 255, 255, 150);
  rect(615, 310, 70, 50);
  fill(0);
  textSize(40);
  text("3", 650, 330);
    //5 points button
  if(fiveOn == true){
    stroke(153,24,24);
  } else {
    stroke(0);
  }
  tactileFillRect(615, 370, 70, 50, 255, 255, 255, 255, 255, 255, 150);
  rect(615, 370, 70, 50);
  fill(0);
  textSize(40);
  text("5", 650, 390);
    //10 points button
  if(tenOn == true){
    stroke(153,24,24);
  } else {
    stroke(0);
  }
  tactileFillRect(615, 430, 70, 50, 255, 255, 255, 255, 255, 255, 150);
  rect(615, 430, 70, 50);
  fill(0);
  textSize(35);
  text("10", 650, 452.5);
    //infinite points (no limit) button
  if(infinityOn == true){
    stroke(153,24,24);
  } else {
    stroke(0);
  }
  tactileFillRect(615, 490, 70, 50, 255, 255, 255, 255, 255, 255, 150);
  rect(615, 490, 70, 50);
  fill(0);
  image(infinity, 627.5, 495, 45, 45);
}

void optionsClicks(){
  if(mouseX >  0 && mouseX < 75 && mouseY > 0 && mouseY < 75){//if the return button is pressed, the user is returned to the "INTRO" mode
    clickSound();
    optionsTheme.pause();
    mode = INTRO;
  }
  if(mouseX > 725 && mouseX < 800 && mouseY > 0 && mouseY < 75){//if the controls button is pressed, the program switches to the "CONTROLS" mode
    clickSound();
    mode = CONTROLS;
  }
  
  //left paddle colour selection
  //black button
  if(mouseX > 75 && mouseX < 140 && mouseY > 205 && mouseY < 275){
    blipSound();
    leftColour = black;
    leftblackOn = true;
    leftpurpleOn = false;
    leftblueOn = false;
    leftredOn = false;
    leftgreenOn = false;
    leftyellowOn = false;
  }
  //purple button
  if(mouseX > 155 && mouseX < 220 && mouseY > 205 && mouseY < 275){
    blipSound();
    leftColour = purple;
    leftpurpleOn = true;
    leftblackOn = false;
    leftblueOn = false;
    leftredOn = false;
    leftgreenOn = false;
    leftyellowOn = false;
  }
  //blue button
  if(mouseX > 75 && mouseX < 140 && mouseY > 285 && mouseY < 350){
    blipSound();
    leftColour = blue;
    leftblueOn = true;
    leftblackOn = false;
    leftpurpleOn = false;
    leftredOn = false;
    leftgreenOn = false;
    leftyellowOn = false;
  }
  //red button
  if(mouseX > 155 && mouseX < 220 && mouseY > 285 && mouseY < 350){
    blipSound();
    leftColour = red;
    leftredOn = true;
    leftblackOn = false;
    leftpurpleOn = false;
    leftblueOn = false;
    leftgreenOn = false;
    leftyellowOn = false;
  }
  //green button
  if(mouseX > 75 && mouseX < 140 && mouseY > 365 && mouseY < 430){
    blipSound();
    leftColour = green;
    leftgreenOn = true;
    leftblackOn = false;
    leftpurpleOn = false;
    leftblueOn = false;
    leftredOn = false;
    leftyellowOn = false;
  }
  //yellow button
  if(mouseX > 155 && mouseX < 220 && mouseY > 365 && mouseY < 430){
    blipSound();
    leftColour = yellow;
    leftyellowOn = true;
    leftblackOn = false;
    leftpurpleOn = false;
    leftblueOn = false;
    leftredOn = false;
    leftgreenOn = false;
  }
  
  //right colour selection
  //black button
  if(mouseX > 320 && mouseX < 385 && mouseY > 205 && mouseY < 270){
    blipSound();
    rightColour = black;
    rightblackOn = true;
    rightpurpleOn = false;
    rightblueOn = false;
    rightredOn = false;
    rightgreenOn = false;
    rightyellowOn = false;
  }
  //purple button
  if(mouseX > 400 && mouseX < 465 && mouseY > 205 && mouseY < 270){
    blipSound();
    rightColour = purple;
    rightblackOn = false;
    rightpurpleOn = true;
    rightblueOn = false;
    rightredOn = false;
    rightgreenOn = false;
    rightyellowOn = false;
  }
  //blue button
  if(mouseX > 320 && mouseX < 385 && mouseY > 285 && mouseY < 350){
    blipSound();
    rightColour = blue;
    rightblueOn = true;
    rightblackOn = false;
    rightpurpleOn = false;
    rightredOn = false;
    rightgreenOn = false;
    rightyellowOn = false;
  }
  //red button
  if(mouseX > 400 && mouseX < 465 && mouseY > 285 && mouseY < 350){
    blipSound();
    rightColour = red;
    rightredOn = true;
    rightblackOn = false;
    rightpurpleOn = false;
    rightblueOn = false;
    rightgreenOn = false;
    rightyellowOn = false;
  }
  //green button
  if(mouseX > 320 && mouseX < 385 && mouseY > 365 && mouseY < 430){
    blipSound();
    rightColour = green;
    rightgreenOn = true;
    rightblackOn = false;
    rightpurpleOn = false;
    rightblueOn = false;
    rightredOn = false;
    rightyellowOn = false;
  }
  //yellow button
  if(mouseX > 400 && mouseX < 465 && mouseY > 365 && mouseY < 430){
    blipSound();
    rightColour = yellow;
    rightyellowOn = true;
    rightblackOn = false;
    rightpurpleOn = false;
    rightblueOn = false;
    rightredOn = false;
    rightgreenOn = false;
  }
  
  //points selection
  //1 point button
  if(mouseX > 615 && mouseX < 685 && mouseY > 250 && mouseY < 300){
    blipSound();
    oneOn = true;
    threeOn = false;
    fiveOn = false;
    tenOn = false;
    infinityOn = false;
  }
  //3 points button
  if(mouseX > 615 && mouseX < 685 && mouseY > 310 && mouseY < 360){
    blipSound();
    threeOn = true;
    oneOn = false;
    fiveOn = false;
    tenOn = false;
    infinityOn = false;
  }
  //5 points button
  if(mouseX > 615 && mouseX < 685 && mouseY > 370 && mouseY < 420){
    blipSound();
    fiveOn = true;
    oneOn = false;
    threeOn = false;
    tenOn = false;
    infinityOn = false;
  }
  //10 points button
  if(mouseX > 615 && mouseX < 685 && mouseY > 430 && mouseY < 480){
    blipSound();
    tenOn = true;
    oneOn = false;
    threeOn = false;
    fiveOn = false;
    infinityOn = false;
  }
  //infinite points button
  if(mouseX > 615 && mouseX < 685 && mouseY > 490 && mouseY < 540){
    blipSound();
    infinityOn = true;
    oneOn = false;
    threeOn = false;
    fiveOn = false;
    tenOn = false;
  }
}

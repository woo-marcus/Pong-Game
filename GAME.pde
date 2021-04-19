void game() {
  background(38, 77, 52);
  introTheme.pause();

  //pause mode
  if (pauseOn == true) {
    mode = PAUSE;
  } 

  //ping pong "table"
  stroke(201, 209, 211);
  strokeWeight(10);
  fill(38, 77, 52);
  rect(2.5, 5, 795, 590);
  line(400, 0, 400, 600);

  //scoreboard
  textFont(retroGaming);
  textSize(50);
  strokeWeight(0);
  fill(255);
  text(leftScore, width/4, 100);
  text(rightScore, 3*width/4, 100);
  timer = timer - 1;

  //left paddle
  stroke(7.5);
  strokeWeight(10);
  fill(leftColour);
  circle(leftX, leftY, leftD);
  if (leftY < 100) {
    leftY = 100;
  }
  if (leftY > 500) {
    leftY = 500;
  }

  //right paddle
  stroke(7.5);
  strokeWeight(10);
  fill(rightColour);
  circle(rightX, rightY, rightD);
  if (rightY < 100) {
    rightY = 100;
  }
  if (rightY > 500) {
    rightY = 500;
  }

  //paddle movement
  if (wKey == true) leftY = leftY - 5;
  if (sKey == true) leftY = leftY + 5;

  if (AI == false) {
    if (upKey == true) rightY = rightY - 5;
    if (downKey == true) rightY = rightY + 5;
  } else {
    if (ballX > 300) {
      if (ballY > rightY) {
        rightY = rightY + 4;
      }
      if (ballY < rightY) {
        rightY = rightY - 4;
      }
    }
  }

  //paddle-ball detection
  if (dist(leftX, leftY, ballX, ballY) <= leftD/2 + ballD/2) {
    hitSound();
    ballVX = (ballX - leftX)/10;
    ballVY = (ballY - leftY)/10;
  }
  if (dist(rightX, rightY, ballX, ballY) <= rightD/2 + ballD/2) {
    hitSound();
    ballVX = (ballX - rightX)/10;
    ballVY = (ballY - rightY)/10;
  }

  //ball
  strokeWeight(0);
  fill(249, 181, 39);
  circle(ballX, ballY, ballD);
  //movement
  if (timer == 0) {
    ballVX = random(5,10) * randomDirection();//ball's movement is dictated by a randomly-generated range between either 5 and 10 or -5 and -10 (same for below)
    ballVY = random(5,10) * randomDirection();
  }
  if (timer < 0) {
    ballX = ballX + ballVX;
    ballY = ballY + ballVY;
  }
  //vertical bouncing
  if (ballY < ballD/2 || ballY > height - ballD/2) {
    ballVY = ballVY * -1;
  }
  if (ballY < ballD/2) {
    ballY = ballD/2;
  }
  if (ballY > height - ballD/2) {
    ballY = height - ballD/2;
  }
  //horizontal bouncing + scoring
  if (ballX < 0) {
    rightScore++;//*means the same thing as "rightScore = rightScore + 1"
    ballX = width/2;
    ballY = height/2;
    timer = 50;
    if (rightScore < totalPoints) {//if the score is less than the value of totalPoints, the "point" sound will play (if the score is equal to totalPoints, a win or lose theme will play instead)
      pointSound();
    }
  }
  if (ballX > 800) {
    leftScore++;
    ballX = width/2;
    ballY = height/2;
    timer = 50;
    if (leftScore < totalPoints) {
      pointSound();
    }
  }

  //accounting for the value of totalPoints
  if (oneOn == true) {
    totalPoints = 1;
  }
  if (threeOn == true) {
    totalPoints = 3;
  }
  if (fiveOn == true) {
    totalPoints = 5;
  }
  if (tenOn == true) {
    totalPoints = 10;
  }
  if (infinityOn == true) {
    totalPoints = 1000000000;//I used the biggest number that Processing allows in place of infinity
  }
  if (rightScore == totalPoints || leftScore == totalPoints) {//if the score of either of the players reaches the value of totalPoints, the program switches to the "GAMEOVER" mode
    mode = GAMEOVER;
  }
}


int randomDirection() {
  if (random(0, 1) < 0.5){
    return 1;
  } else {
    return -1;
  }
}

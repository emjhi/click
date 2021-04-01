void gameover() {
  image(lost, 0, 0);
  theme.pause();
  gameover.play();

  if (score >= highscore) {
    highscore = score;
  }
  
  fill(0);
  textFont(pixel);
  textSize(50);
  text("highscore:" + highscore, 300, 400);

  fill(#C1C1C1);
  tactile(75, 475, 150, 75);
  rect(75, 475, 150, 75);//retry

tactile(375, 475, 150, 75);
  rect(375, 475, 150, 75);//quit
  
  textSize(25);
  fill(0);
  text("RETRY?" , 155, 510);
  text("QUIT", 450, 510);
}

void gameoverClicks() {
  reset();
  if (mouseX >= 75 && mouseX <= 225 && mouseY >= 475 && mouseY <= 550) {
    mode = INTRO;
    click.rewind();
    click.play();
  }
  if (mouseX >= 375 && mouseX <= 525 && mouseY >= 475 && mouseY <= 550) {
   exit(); 
  }
}

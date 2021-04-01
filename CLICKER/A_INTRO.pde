void intro() {
  start.play();
  noStroke();
  background(#C1C1C1);
  fill(#8B8B8B);
  rect(5, 5, 590, 30);

  fill(240);
  rect(5, 45, 560, 520);
  rect(570, 45, 25, 520);

  //top deco buttons
  fill(#C1C1C1);
  rect(570, 10, 20, 20);
  rect(545, 10, 20, 20);
  rect(520, 10, 20, 20);
  stroke(0);
  strokeWeight(3);
  line(525, 25, 535, 25);

  line(550, 15, 560, 15);
  strokeWeight(1);
  line(549, 15, 549, 25);
  line(550, 25, 560, 25);
  line(561, 15, 561, 25);

  strokeWeight(2);
  line(575, 15, 585, 25);
  line(585, 15, 575, 25);

  //start button
  image(starting, 175, 450);
  image(settings, 20, 510);// options
  //rect(175, 450, 225, 95);
  
  fill(0);
  textFont(pixel);
  textSize(65);
  text("Clicker Game", 290, 200);
}

void introClicks() {
  if (mouseX >= 20 && mouseX <= 70 && mouseY >= 510 && mouseY <= 560) {
    mode = OPTIONS;
    click.rewind();
    click.play();
  }
  if (mouseX >= 175 && mouseX <= 400 && mouseY >= 450 && mouseY <= 545) {
    mode = GAME;
    click.play();
  }
}

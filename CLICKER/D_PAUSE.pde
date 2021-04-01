void pause() {
  theme.pause();
  stroke(100);
  strokeWeight(1);
  fill(#C1C1C1);
  rect(100, 100, 400, 300);
  noStroke();
  fill(240);
  rect(105, 140, 390, 235);
  fill(#8B8B8B);
  rect(105, 105, 390, 25);

  noStroke();
  fill(#C1C1C1);
  rect(455, 110, 15, 15);
  rect(435, 110, 15, 15);
  strokeWeight(1);
  stroke(0);
  line(458, 122, 467, 122);
  line(458, 122, 458, 113);
  line(467, 122, 467, 113);
  strokeWeight(2);
  line(459, 113, 466, 113);
  line(438, 122, 446, 122);

  tactile1();
  noStroke();
  fill(#C1C1C1);
  rect(475, 110, 15, 15);
  strokeWeight(2);
  stroke(0);
  line(477, 113, 486, 122);
  line(486, 113, 477, 122);
  
  fill(0);
  textFont(pixel);
  textSize(50);
  text("PAUSED", 300, 250);
}

void pauseClicks() {
  if (mouseX >= 475 && mouseX <= 490 && mouseY >= 110 && mouseY <= 125) {
    mode = GAME;
    click.rewind();
    click.play();
  }
}

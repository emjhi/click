void game() {
  theme.play();
  background(0);
  
  fill(#C1C1C1);
  textFont(pixel);
  textSize(25);
  text("Score: " + score, 75, 20);
  text("Lives: " + lives, 75, 50);

  //target
  fill(#C1C1C1);
  circle(x, y, d);
  image(selectedImage, x - 25, y - 25, 50, 50);

  //pause
  fill(#C1C1C1);
  rect(550, 10, 40, 40);
  noStroke();
  fill(#626262);
  triangle(560, 15, 585, 30, 560, 45);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x <= d/2 || x >= width - d/2) {
    vx = vx * -1;
  }
  if (y <= d/2 || y >= height - d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (mouseX >= 550 && mouseX <= 590 && mouseY >= 10 && mouseY <= 50) {
    mode = PAUSE;
    click.rewind();
    click.play();
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
    error.rewind();
    error.play();
  }
}

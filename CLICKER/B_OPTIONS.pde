void options() {
  stroke(100);
  strokeWeight(1);
  fill(#C1C1C1);
  rect(100, 100, 400, 300);
  noStroke();
  fill(240);
  rect(105, 140, 390, 235);
  fill(#8B8B8B);
  rect(105, 105, 390, 25);

  //indicator
  fill(0);
  circle(350, 250, d);
  fill(#8B8B8B);
  image(selectedImage, 325, 225, 50, 50);

  //targets
  tactile(115, 150, 75, 75);
  target1OnOff();
  rect(115, 150, 75, 75);
  image(target1, 115, 150, 75, 75);

  tactile(115, 275, 75, 75);
  target2OnOff();
  rect(115, 275, 75, 75);
  image(target2, 115, 275, 75, 75);

  //slider
  noStroke();
  strokeWeight(1);
  rect(208, 160, 14, 180);
  strokeWeight(1);
  noStroke();
  fill(#C1C1C1);
  rect(208, sliderY, 14, 20);

  //top buttons
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
}

void optionClicks() {  
  if (mouseX >= 475 && mouseX <= 490 && mouseY >= 110 && mouseY <= 125) {
    mode = INTRO;
    click.rewind();
    click.play();
  }
  if (mouseX >= 115 && mouseX <= 190 && mouseY >= 150 && mouseY <= 225) {
    target1On = !target1On;
    selectedImage = target1;
    image(target1, 325, 225, 50, 50);
  }

  if (mouseX >= 115 && mouseX <= 275 && mouseY >= 275 && mouseY <= 350) {
    target2On = !target2On;
    selectedImage = target2;
    image(target2, 325, 225, 50, 50);
  }
}

void mouseDragged() {
  slider();

  if (sliderY >= 160 && sliderY <= 320) {
    d = map(sliderY, 160, 320, 100, 200);
  }
}

void mousePressed() {
  slider();

  if (sliderY >= 160 && sliderY <= 320) {
    d = map(sliderY, 160, 320, 100, 200);
  }
}

void slider() {
  if (mouseX >= 208 && mouseX <= 222 && mouseY >= 160 && mouseY <= 320) {
    sliderY = mouseY;
  }
}

void tactile1() {
  if (mouseX >= 475 && mouseX <= 490 && mouseY >= 110 && mouseY <= 125) {
    fill(0, 0, 0, 100);
  } else {
    fill(0, 0, 0, 0);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) {
    stroke(0, 0, 100); 
    strokeWeight(6);
  } else {
    noStroke();
  }
}

void target1OnOff() {
  if (target1On == true)
    image(selectedImage, 325, 225, 50, 50);
}

void target2OnOff() {
  if (target2On == true) 
    image(selectedImage, 325, 225, 50, 50);
}

class Levels {

  int score;
  Levels() {
    score = 0;
  }  

  int score() {
    return score;
  }

  int level(int x) {
    if (x == 5000) {
      return 2;
    }
    else if (x == 500) {
      return 1;
    } 
    else {
      return 0;
    }
  }

  void update(int x) {
    score = score + x;
  }

  boolean strt() {
    rectMode(CENTER);
    rect(width/2, height/2+50, 50, 50);
    textSize(25);
    textAlign(CENTER);
    text("START", width/2, height/2);
    if (mouseX<width/2+25&&mouseX>width/2-25&&mouseY<height/2+75&&mouseY>height/2+25&&mousePressed) {
      return true;
    } 
    else {
      return false;
    }
  }

  void scorebox() {
    textSize(50);
    textAlign(CENTER);
    text(level.score, width/2, 200);
  }
}


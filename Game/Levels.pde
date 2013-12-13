class Levels {

  int score, lives;
  Levels() {
    //set score equal to zero
    score = 0;
    lives = 5;
  }  

  int score() {
    //easy access to the current score 
    return score;
  }
  
  int lives(){
   //easy access to the current amount of lives
   //still a WIP 
   return lives; 
  }

  int level(int x) {
    //determines level
    //level determines other factors such as rain
    if (x==0||x==500||x==1000||x==2000||x==5000||x==10000) {
      return 0;
    }
    else if (x > 10000) {
      return 6;
    }
    else if (x > 5000) {
      return 5;
    }
    else if (x > 2000) {
      return 4;
    }
    else if (x > 1000) {
      return 3;
    }
    else if (x > 500) {
      return 2;
    }
    else { 
      return 1;
    }
  }

  void scoreupdate(int x) {
    //updates score between this class and the main interface
    score = score + x;
  }
  
  void lifeupdate(int x){
    lives-=x;
  }

  boolean strt() {
    //score information   
    textSize(25);
    textAlign(CENTER);
    text("START", width/2, height/2);
    text("LEVEL", width/2, height/2 + 110);
    text(level.level(level.score+1), width/2, height/2 + 150);
    //start button
    //it's a boolean so when it's true, the next level appears
    rectMode(CENTER);
    rect(width/2, height/2+50, 50, 50);
    if (mouseX<width/2+25&&mouseX>width/2-25&&mouseY<height/2+75&&mouseY>height/2+25&&mousePressed) {
      return true;
    } 
    else {
      return false;
    }
  }

  void scorebox() {
    //displays the score
    textSize(20);
    textAlign(CENTER);
    text("Score:" + level.score, 75, 475);
    text("Lives:" + lives, 450, 475);
  }
}


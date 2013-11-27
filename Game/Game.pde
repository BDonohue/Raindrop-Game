ArrayList<Raindrop> Rain = new ArrayList<Raindrop>();
int input, score;
Levels level = new Levels();

void setup() {
  size(500, 500);
  Rain.add(new Raindrop());
}

void draw() {

  if (level.level(level.score) == 1) {
    Rain = new ArrayList<Raindrop>();
    cursor(ARROW);
    background(80, 220, 230); 
    rainbow(750, 255, 0, 0);
    rainbow(725, 255, 128, 0);
    rainbow(700, 255, 255, 0);
    rainbow(675, 0, 255, 0);
    rainbow(650, 0, 0, 255);
    rainbow(625, 200, 0, 255);
    rainbow(600, 80, 220, 230);
    println(level.strt());
    fill(0);
    level.scorebox();
    if (level.strt()) {
      input = input + 1; 
      level.update(input);
    }
  }

  else {
    noCursor();
    background(0);
    if (level.score()%25 == 1 && level.score() >= 526){
      input = input - 1;
      level.update(input);
    }
    if (frameCount%150 == 0 && level.level(level.score) == 0) {
      Rain.add(new Raindrop());
    }
    else if (frameCount%120 == 0 && level.level(level.score) == 2) {
      Rain.add(new Raindrop());
    }
    else if (frameCount%90 == 0 && level.level(level.score) == 3) {
      Rain.add(new Raindrop());
    } 
    else if (frameCount%80 == 0 && level.level(level.score) == 4) {
      Rain.add(new Raindrop());
    } 
    else if (frameCount%70 == 0 && level.level(level.score) == 5) {
      Rain.add(new Raindrop());
    } 
    else if (frameCount%60 == 0 && level.level(level.score) == 6) {
      Rain.add(new Raindrop());
    } 


    for (int i = Rain.size()-1; i >= 0; i--) {
      Raindrop rain = Rain.get(i);
      rain.update();
      input = rain.test();
      level.update(input);
    }
    fill(255);
    level.scorebox();
  }
}

void rainbow(int x, int a, int b, int c) {
  fill(a, b, c);
  noStroke();
  ellipse(width/2, height-50, x, x);
}


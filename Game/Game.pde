ArrayList<Raindrop> Rain = new ArrayList<Raindrop>();
int input, score;
Levels level = new Levels();
Catcher catcher = new Catcher();

void setup() {
  size(500, 500);
}

void draw() {
  if (level.level(level.score) == 0) {
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
    fill(0);
    level.scorebox();
    if (level.strt()) {
      input = input + 25; 
      level.update(input);
    }
  }

  else {
    println(level.level(level.score));
    
    noCursor();
    background(0);

    if (second()%5 == 0 && level.level(level.score) == 1) {
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
    
    catcher.display(mouseX);
    fill(255);
    level.scorebox();
  }
}

void rainbow(int x, int a, int b, int c) {
  fill(a, b, c);
  noStroke();
  ellipse(width/2, height-50, x, x);
}


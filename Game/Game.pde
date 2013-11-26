ArrayList<Raindrop> Rain = new ArrayList<Raindrop>();
int input, score;
Levels level = new Levels();

void setup() {
  size(500, 500);
}

void draw() {
  noCursor();
  background(80, 220, 230); 
  rainbow(750, 255, 0, 0);
  rainbow(725, 255, 128, 0);
  rainbow(700, 255, 255, 0);
  rainbow(675, 0, 255, 0);
  rainbow(650, 0, 0, 255);
  rainbow(625, 200, 0, 255);
  rainbow(600, 80, 220, 230);

  if (frameCount%45 == 0) {
    Rain.add(new Raindrop());
  }

  for (int i = Rain.size()-1; i >= 0; i--) {
    Raindrop rain = Rain.get(i);
    rain.update();
    input += rain.test();
    level.update(rain.test());
  }

  text(level.score, 50, 50);
  
}

void rainbow(int x, int a, int b, int c) {
  fill(a, b, c);
  noStroke();
  ellipse(width/2, height-50, x, x);
}


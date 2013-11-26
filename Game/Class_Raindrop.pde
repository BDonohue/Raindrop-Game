class Raindrop {
  PVector Loc, Vel, Acc;
  Raindrop() {
    Loc = new PVector(random(width), 0);
    Vel = new PVector(0, 1);
    Acc = new PVector(0, 0);
  } 
  void update() {
    fill(0, 0, 200);
    ellipse(Loc.x, Loc.y, 25, 25);
    Loc.add(Vel);
    Vel.add(Acc);
  }
  int test() {
    if (Loc.y-25>height) {
      Loc = new PVector(random(width), 0); 
      return 25;
    } 
    else {
      return 0;
    }
  }
}


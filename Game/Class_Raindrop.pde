class Raindrop {

  PVector Loc, Vel, Acc;
  boolean run;
  Raindrop() {
    Loc = new PVector(random(width), 0);
    Vel = new PVector(0, 1);
    Acc = new PVector(0, 0);
  } 

  void update() {
    if (run) {
      fill(0, 0, 200);
      ellipse(Loc.x, Loc.y, 25, 25);
      Loc.add(Vel);
      Vel.add(Acc);
    }
  }

  int test() {
    if (Loc.y + 25 > height - 45 && Loc.x < mouseX+25 && Loc.x > mouseX-25) {
      run = false;
      Loc = new PVector(random(width), 0);
      return 25;
    } 
    else {
      Loc = new PVector(random(width), 0);
      return 0;
    }
  }
}


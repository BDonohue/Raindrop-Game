class Raindrop {

  PVector Loc, Vel;  //raindroplet's location and velocity
  boolean run;  //prevents raindroplets from running after they are caught
  Raindrop() {
    Loc = new PVector(random(width), 0);
    Vel = new PVector(0, 1);
    run = true;
  } 

  void update() {
    if (run) {
      //make a droplet and make it move
      fill(0, 0, 200);
      ellipse(Loc.x, Loc.y, 25, 25);
      Loc.add(Vel);
    }
  }

  int test() {
    //will
    if (Loc.y + 25 > height - 45 && Loc.x < mouseX+25 && Loc.x > mouseX-25) {
      //tests if raindrop's location is in sync with the catcher
      run = false;  //deactivates rain drop
      Loc = new PVector(random(width), 0);
      return 25;  // returns score
    } 
    else {
      return 0;  //
    }
  }
}


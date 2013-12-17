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
      ellipse(Loc.x, Loc.y, 25, 25); //the extra ellipses combine to create a nice raindrop shape
      ellipse(Loc.x, Loc.y-5, 20, 25);
      ellipse(Loc.x, Loc.y-10, 15, 25);
      ellipse(Loc.x, Loc.y-15, 10, 25);
      Loc.add(Vel);
    } else {
        Loc.y = 0; 
    }
  }

  int test() {
    if (Loc.y + 25/2 > height - 45 && Loc.x < mouseX+25 && Loc.x > mouseX-25) {
      //tests if raindrop's location is in sync with the catcher
      run = false;  //deactivates rain drop
      return 25;  // returns score
    } 
    else {
      return 0;  //
    }
  }
  
  float Locy(){
    //returns Loc.y for lightning purposes 
    return Loc.y;
  }
  
  float Locx(){
   //returns Loc.y for lightning purposes 
   return Loc.x;
  }
  
  void reset(){
   //for the fallen rain drops, we salute you
   run = false;
  }
  
  boolean lightningrun(float x){
    if(x>10&&x<50){
    return true;
    } else {
    return false;  
    } 
  }
}


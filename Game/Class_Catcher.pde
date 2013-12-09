class Catcher {

  Catcher(){
  }
  
  //it's more of a design
  //I'm using mouseX, loc.x, & loc.y to determine if they touch
  void display(int x) {
    fill(255);
    rect(x, height-45, 50, 10);
    quad(x-25, height-35, x-15, height-10, x+15, height-10, x+25, height-35);
  }

}


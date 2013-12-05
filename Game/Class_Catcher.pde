class Catcher {

  Catcher(){
  }

  void display(int x) {
    rect(x, height-45, 50, 10);
    quad(x-25, height-35, x-15, height-10, x+15, height-10, x+25, height-35);
  }
}


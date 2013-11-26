class Levels{
  
  int score;
  Levels(){
    score = 0;
  }  
  
  int score(){
    return score;
  }
  
  void update(int x){
    score = score + x;
  }
  
}

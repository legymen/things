Missile missale1;


void setup(){
  size(600, 600);
  
  missile1 = new Missile(100, 200);
  
}


void draw(){
  background(100);
  
  missile1.update();
  
}

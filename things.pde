Missile missile1;
Wheel wheel1;


void setup(){
  size(600, 600);
  
  missile1 = new Missile(100, 200);
  wheel1 = new Wheel(200, 100);
}


void draw(){
  background(100);
  
  missile1.update();
  wheel1.update();
  
}

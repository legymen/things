Missile missile1;
Wheel wheel1;
Ball ball1;
Timed timed1;
Plan plan1;


void setup(){
  size(600, 600);
  
  missile1 = new Missile(100, 200);
  wheel1 = new Wheel(200, 100);
  ball1 = new Ball(200, 100);
  timed1 = new Timed(200, 100);
  plan1 = new Plan(200, 100);
}


void draw(){
  background(100);
  
  missile1.update();
  wheel1.update();
  ball1.update();
  timed1.update();
  plan1.update();
  
}

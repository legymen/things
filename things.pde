Apple apple1;


void setup(){
  size(600, 600);
  
  apple1 = new Apple(100, 200);
  
}


void draw(){
  background(100);
  
  apple1.update();
  
}

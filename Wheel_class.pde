class Wheel{
  float angle = 0;
  float angle2 = 0;
  float xPos;
  float yPos;
  Wheel(float _xPos, float _yPos){
    xPos = _xPos;
    yPos = _yPos;
  }
  void update(){
    render();
  }
  void render(){
  pushMatrix();
  translate (width/2, height/2);
  rotate(angle);
  translate(xPos, yPos);
  rotate(angle2);
  strokeWeight(7.5);
  stroke(80, 57, 10);
  fill(bg_col);
  ellipse(0, 0, 100, 100);
  stroke(0);
  fill(0);
  for(int i = 0; i < 360; i = i + 45){
    rect(-50, - 1.25, 100, 2.5);
    rotate(45);
  }
  angle = angle + 0.02;
  angle2 = angle2 + 0.1;
  popMatrix();
  }
}

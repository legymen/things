plan plan;

void setup() {
  size(700, 700);

 plan = new plan(width/2,height/2);
}

void draw() {
  background(105);
      plan.update();
    
}

class plan {
  PImage plan;
  PVector pos;
  PVector mousePos;
  float w;
  float x;
  float y;
  float c1;
  float c2;
  color c;
  float speed;
  float dx;
  float dy;
  plan(float _x, float _y) {
    pos = new PVector(_x, _y);
    mousePos = new PVector(mouseX, mouseY);
    w=40;
    speed=3;
    plan = loadImage("planBild.png");
  }
  void update() {
    speed=dist(mouseX, mouseY, pos.x, pos.y)/20;
    mousePos.x=mouseX;
    mousePos.y=mouseY;
    dx = mouseX - pos.x;
    dy = mouseY - pos.y;
    PVector direction = PVector.sub(mousePos, pos);
    direction.setMag(speed);
    if (dist(mouseX, mouseY, pos.x, pos.y)<w/2) {
    } else {
      pos.add(direction);
    }
    imageMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(atan2(dy,dx));
    image(plan,0,0,100,100);
    popMatrix();
    imageMode(CORNER);
  }
}

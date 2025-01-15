class Timed {
  int Timer = 1000;
  float xpos;
  float ypos;
  float xspeed = 2;
  float yspeed = 2;
  float size = 10;
  
  Timed(float _xpos, float _ypos){
    xpos = _xpos;
    ypos = _ypos;
  }


  void update() {
    move();
    render();
  }


  void render() {
    ellipse (xpos, ypos, size, size);
  }
  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (millis() > Timer) {
      yspeed = random(1, 6);
      xspeed = random(1, 6);
      yspeed = yspeed * -1;
      xspeed = xspeed * -1;
      Timer += 1000;
    }

    if (xpos > width - 5 || xpos < 5) {
      xspeed = xspeed * -1;
    }
    if (ypos > height - 5 || ypos < 5) {
      yspeed = yspeed * -1;
      Timer += 1000;
    }
  }
}

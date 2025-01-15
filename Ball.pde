class Ball {
  float xpos;
  float ypos;
  color c = color(random(0, 255), random(0, 255), random(0, 255));
  float size = random(10, 40);
  float xspeed = random(-5, 5);
  float yspeed= random(-5, 5);

  Ball(float _xpos, float _ypos) {
    xpos = _xpos;
    ypos = _ypos;
  }

  void update() {
    move();
    render();
  }
  void move() {
    if (xpos > width -(size/2)|| xpos < (size/2)) {
      xspeed = -xspeed;
    }
    if (ypos > height -(size/2)|| ypos < (size/2)) {
      yspeed = -yspeed;
    }
    xpos += xspeed;
    ypos += yspeed;
  }

  void render() {
    fill(c);
    ellipse(xpos, ypos, size, size);
  }
}

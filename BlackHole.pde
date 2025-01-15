class Black_hole {

  float xSpeed;
  float ySpeed;
  float yPos;
  float xPos;
  color col;
  float size;

  Black_hole(float _xpos, float _ypos) {
    xPos = _xpos;
    yPos = _ypos;

    xSpeed = random(-5, 5);
    ySpeed = random(-5, 5);
  }

  void update() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;

    bounce();

    display();
  }

  void display() {
    fill (0);
    circle(xPos, yPos, 200);
  }


  void bounce() {
    if (xPos > width - size/2) {
      xSpeed = xSpeed * (-1);
    }
    if (yPos>height - size/2) {
      ySpeed = ySpeed * (-1);
    }
    if (xPos<0 + size/2) {
      xSpeed = xSpeed * (-1);
    }
    if (yPos<0 + size/2) {
      ySpeed = ySpeed * (-1);
    }
  }
}

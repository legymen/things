class Eye {
  float xpos;
  float ypos;

  float mx;
  float my;

  float easing = 0.08;
  int radiusIris = 60;
  int radiusEyeBall = 100;

  float innerMinX = xpos - radiusEyeBall + radiusIris;
  float innerMaxX = xpos + radiusEyeBall - radiusIris;
  float innerMinY = ypos - radiusEyeBall + radiusIris;
  float innerMaxY = ypos + radiusEyeBall - radiusIris;






  Eye(float _xpos, float _ypos) {
    xpos = _xpos;
    ypos = _ypos;
  }

  void update() {

    Constrain();
    display();
  }

  void display() {

    pushMatrix();


    translate(xpos, ypos);


    ellipseMode(RADIUS);
    
    noStroke();
    
    
    fill(#E8DEDF);
    ellipse(0, 0, radiusEyeBall, radiusEyeBall);



    fill(#406B98);
    ellipse(mx, my, radiusIris, radiusIris);
    fill(20);
    ellipse(mx, my, radiusIris/2, radiusIris/2);


    popMatrix();
  }
  void Constrain() {
    if (abs(mouseX + mx ) > 0.1) {
      mx = (mouseX - mx - xpos) * easing;
    }
    if (abs(mouseY + my) > 0.1) {
      my = (mouseY - my - ypos) * easing;
    }
    mx = constrain(mx, innerMinX, innerMaxX);
    my = constrain(my, innerMinY, innerMaxY);
  }
}

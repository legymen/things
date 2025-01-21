class Square 
{

  // variables
  int x;
  float y;
   
  boolean isMovingLeft;
  boolean isMovingRight;
   
  int speed;
  float col = random(1, 255);
 
  // constructor
  Square (int startingX, int startingY){
    x = startingX;
    y = startingY;

    isMovingLeft = true;
    isMovingRight = false;
     
    speed = 10;
    color(col);
  }
  
    // functions
  void render()
  {
    rect(x, y, 50, 50);
  }
     
  void move(){
    
    if (isMovingRight == true){
      x += speed; // x = x + speed;
    }
    
    if (isMovingLeft == true){
      x -= speed; // x = x - speed;
    }
      if (x < -50){
        y = random(50, 550);
        isMovingLeft = false;
        isMovingRight = true;
      }
      if (x > 650){
        y = random(50, 550);
        isMovingRight = false;
        isMovingLeft = true;
      }
  }
  
  void update()
  {
    fill(col);
    
    render();
    move();
  }
}

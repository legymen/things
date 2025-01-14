class Missile {
  
  float mx,my,mv,ms,ma,mt;
  boolean armed;
  
  float actualt;
  
  float[] txA;
  float[] tyA;
  
  int trailLength = 40;
  int lineCounter = 0;
  int trailClosest = 0;

  
  Missile (float x,float y, float v, float s, float a, float t, boolean ar) {
    mx =x; my =y; mv=v; ms=s; ma=a; mt=t; armed=ar;
    
  }

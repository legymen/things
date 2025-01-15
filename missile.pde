
ArrayList<Missile> MList = new ArrayList<Missile>(); 


class Missile {
  
  
  
  int tick= 0;
  
  PVector pos = new PVector(0,0);
  PVector vel = new PVector(0,0);
  PVector acc = new PVector(0,0);
  
  Missile (PVector position,PVector velocity,PVector acceleration) {
    pos = position;
    vel = velocity;
    acc = acceleration;
  }
  Missile (float a, float b) {}
  
  
  void update(){
    populate();
    for(int i = MList.size()-1;i>=0;i--){
    MList.get(i).travel();
    MList.get(i).render();
    MList.get(i).fade();
    
    }
    println(MList.size());
  }
  
  void populate(){
    if(MList.size()<512){
    MList.add(new Missile(new PVector(-50,height+50),new PVector(2,-2),new PVector(random(-0.01,0.01),random(-0.01,0.01))));
    }
  }
  
  void fade(){
    this.tick++;
    if( this.tick > 150){
      MList.remove(this);
    }
  
  
  }
  
  
  void travel(){
    pos = pos.add(vel);
    vel = vel.add(acc);
  
    
  }
  
  void render(){
    float theta = vel.heading()-PI/2;
    
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    
    stroke(0);
    fill(255,2,2,50);
    strokeWeight(2);
    
    triangle(0,0,-10,40,10,40);
    
    popMatrix();
    

  }
  



}

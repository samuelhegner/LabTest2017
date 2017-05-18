class Bird
{
  PVector pos;
  float speed;
  float radius;
  float rightMult;
  
  Bird(float x, float y)
  {
    float ran = random(0, 1);
    
    if(ran >0.5)
    {
      rightMult = -1;
    }
    if(ran <=0.5)
    {
      rightMult = 1;
    }
    
    pos = new PVector(x, y);
    radius = 10;
    speed = 5*rightMult;
  }
  
  void render()
  {
   pushMatrix();
   translate(pos.x, pos.y);
   noStroke();
   fill(255, 0, 0);
   ellipse(0, 0, radius*2, radius*2);
   ellipse(radius*1.5*rightMult, 0, radius, radius);
   popMatrix();
  }
  
  void update()
  {
    pos.x += speed;
    
    if(pos.x < 0 - radius || pos.x > width + radius)
    {
      birds.remove(this);
    }
  }
}
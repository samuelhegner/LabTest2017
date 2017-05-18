class Bee extends GameObject
{
  PVector forward;
  float rightMult;

  Bee()
  {
    super(width/2, height/2, 5, 0.4);
  }

  void render()
  {
    fill(255, 255, 0);
    stroke(0);
    strokeWeight(2);
    ellipse(pos.x, pos.y, radius*2, radius*2);
    line(pos.x, pos.y -radius, pos.x, pos.y +radius);

    ellipse(pos.x +radius *rightMult, pos.y, 5, 5);
  }

  void update()
  {
    PVector toMouse = new PVector(mouseX, mouseY);
    forward = PVector.sub(toMouse, pos);
    forward.normalize();
    pos.add(PVector.mult(forward, speed));
    
    if(pos.x >= mouseX)
    {
      rightMult = -1;
    }
    else
    {
      rightMult = 1;
    }
  }
}
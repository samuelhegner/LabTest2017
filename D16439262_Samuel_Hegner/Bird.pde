class Bird extends GameObject
{
  float speed;
  float rightMult;

  Bird(float x, float y)
  {
    super(x, y, 10, 5);
    float ran = random(0, 1);

    if (ran >0.5)
    {
      rightMult = -1;
    }
    if (ran <=0.5)
    {
      rightMult = 1;
    }
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
    speed = 5*rightMult;
    pos.x += speed;

    if (pos.x < 0 - radius || pos.x > width + radius)
    {
      objects.remove(this);
    }
  }
}
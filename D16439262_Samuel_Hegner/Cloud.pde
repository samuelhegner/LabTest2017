class Cloud extends GameObject
{
  Cloud(float x, float y)
  {
    super(x, y, 30, 0.3);
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(192);
    stroke(150, 50);
    ellipse(-radius, 0, radius*1.5, radius*1.5);
    ellipse(radius, 0, radius*1.5, radius*1.5);
    ellipse(0, 0, radius*2, radius*2);
    popMatrix();
  }

  void update()
  {
    pos.x += speed;

    if (pos.x > width +radius)
    {
      pos.x =  -radius;
      pos.y = random(0, 100);
    }
  }
}
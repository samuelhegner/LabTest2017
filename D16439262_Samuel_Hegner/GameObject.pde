class GameObject
{
  PVector pos;
  float speed;
  float radius;
  
  GameObject(float x, float y, float radius, float speed)
  {
    pos = new PVector(x, y);
    this.radius = radius;
    this.speed = speed;
  }
  
  void render(){}
  void update(){}
}
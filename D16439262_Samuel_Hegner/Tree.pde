class Tree extends GameObject
{
  int leaf;
  PVector start;
  float treeH;
  color tree;
  float thetaInc;

  Tree(float x, float y)
  {
    super(x, y, 10, 2);
    leaf =(int) random(3, 9);
    start = new PVector(pos.x, pos.y);
    treeH = random(50, 100);
    tree = color(random(0, 255), random(0, 255), random(0, 255));
    thetaInc = TWO_PI/leaf;
  }

  void render()
  {
    stroke(139, 69, 19, 200);
    line(pos.x, pos.y, start.x, start.y);
    
    pushMatrix();
    translate(pos.x, pos.y);
    fill(tree);
    stroke(100);
    ellipse(0, 0, radius*2, radius*2);
    
    for(int i = 0; i < leaf; i ++)
    {
      float theta = i * thetaInc;
      float x = 0 + sin(theta) * radius*2;
      float y = 0 - cos(theta) * radius*2;
      
      ellipse(x, y, radius*2, radius*2);
    }
    popMatrix();
  }

  void update()
  {
    if(pos.y> start.y - treeH)
    {
      pos.y -= speed;
    }
  }
}
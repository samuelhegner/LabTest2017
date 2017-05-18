class Tree
{
  PVector pos;
  float speed;
  int leaf;
  PVector start;
  float radius;
  float treeH;
  color tree;
  float thetaInc;

  Tree(float x, float y)
  {
    pos = new PVector(x, y);
    speed = 2;
    leaf =(int) random(3, 8);
    start = new PVector(pos.x, pos.y);
    radius = 10;
    treeH = random(50, 100);
    tree = color(random(0, 255), random(0, 255), random(0, 255));
    thetaInc = TWO_PI/leaf;
  }

  void render()
  {
    stroke(255);
    line(pos.x, pos.y, start.x, start.y);
    
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(tree);
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
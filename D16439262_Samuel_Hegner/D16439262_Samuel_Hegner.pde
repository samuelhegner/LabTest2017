void setup()
{
  size(500, 500);
}

ArrayList<Bird> birds = new ArrayList<Bird>();
ArrayList<Tree> trees = new ArrayList<Tree>();

void draw()
{
  background(0);
  fill(135, 206, 250);
  noStroke();
  rect(0, 0, width, height/2);
  fill(50, 205, 50);
  rect(0, height/2, width, height/2);
  for(int i = birds.size() -1; i >= 0; i--)
  {
    Bird a = birds.get(i);
    a.update();
    a.render();
  }
  for(int i = trees.size() -1; i >= 0; i--)
  {
    Tree b = trees.get(i);
    b.update();
    b.render();
  }
  println(birds.size());
}

void mouseClicked()
{
  if(mouseY>=height/2)
  {
    trees.add(new Tree(mouseX, mouseY));
  }
  else
  {
    birds.add(new Bird(mouseX, mouseY));
  }
  
  
}
void setup()
{
  size(500, 500);
}

ArrayList<Bird> birds = new ArrayList<Bird>();
ArrayList<Tree> trees = new ArrayList<Tree>();

void draw()
{
  background(0);
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
  birds.add(new Bird(mouseX, mouseY));
  trees.add(new Tree(mouseX, mouseY));
}
void setup()
{
  size(500, 500);
}

ArrayList<Bird> birds = new ArrayList<Bird>();

void draw()
{
  background(0);
  for(int i = birds.size() -1; i >= 0; i--)
  {
    Bird a = birds.get(i);
    a.update();
    a.render();
  }
}

void mouseClicked()
{
  birds.add(new Bird(mouseX, mouseY));
}
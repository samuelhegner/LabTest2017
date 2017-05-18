void setup()
{
  size(500, 500);
  bee = new Bee();
  for(int i = 0; i<=4; i++)
  {
    objects.add(new Cloud(random(0, 255), random(0, 100)));
  }
  
  objects.add(bee);

}


ArrayList<GameObject> objects = new ArrayList<GameObject>();

Bee bee;


void draw()
{
  background(0);
  fill(135, 206, 250);
  noStroke();
  rect(0, 0, width, height/2);
  fill(50, 205, 50);
  rect(0, height/2, width, height/2);
  for(int i = objects.size() -1; i >= 0; i--)
  {
    GameObject obj = objects.get(i);
    obj.update();
    obj.render();
  }
  
  println(objects.size());
}

void mouseClicked()
{
  if(mouseY>=height/2)
  {
    objects.add(new Tree(mouseX, mouseY));
  }
  else
  {
    objects.add(new Bird(mouseX, mouseY));
  }
  
  
}
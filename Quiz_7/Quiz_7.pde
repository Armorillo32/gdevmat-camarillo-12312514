Walker[] walkers = new Walker[100];

void setup() 
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);

  for (int i = 0; i < walkers.length; i++) 
  {
    walkers[i] = new Walker();
    walkers[i].position = new PVector(random(-width/2, width/2), random(-height/2, height/2));
    walkers[i].scale = random(5, 30);
  }
}

void draw() 
{
  background(80);

  PVector mouse = new PVector(mouseX - width / 2, -(mouseY - height / 2));

  for (Walker w : walkers) 
  {
    w.update(mouse);
    w.render();
    w.checkEdges();
  }
}


PVector mousePos() 
{
  float x = mouseX - width / 2;
  float y = -(mouseY - height / 2);
  return new PVector(x, y);
}

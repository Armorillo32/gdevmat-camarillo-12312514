Walker[] walkers = new Walker[100];
Walker blackHole;
int frameCounter = 0;
int resetAfterFrames = 600;

void setup() 
{
  size(1080, 720, P3D);
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);

  initSimulation();
}

void draw() 
{
  background(0);
  frameCounter++;

  fill(255);
  noStroke();
  blackHole.render();

  for (Walker w : walkers) 
  {
    PVector direction = PVector.sub(blackHole.position, w.position);
    direction.normalize();
    w.position.add(direction);
    w.render();
  }

  if (frameCounter >= resetAfterFrames) 
  {
    initSimulation();
    frameCounter = 0;
  }
}

void initSimulation() 
{
  blackHole = new Walker();
  blackHole.position = new PVector(random(-width / 2, width / 2), random(-height / 2, height / 2));
  blackHole.scale = 50;
  blackHole.col = color(255);

  for (int i = 0; i < walkers.length; i++) 
  {
    walkers[i] = new Walker();
    
    float x = (float) (randomGaussian() * width / 8);
    float y = (float) (randomGaussian() * height / 8);
    walkers[i].position = new PVector(x, y);
    
    walkers[i].scale = random(5, 20);
    walkers[i].col = color(random(255), random(255), random(255));
  }
}

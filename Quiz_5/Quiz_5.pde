void setup() 
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

PVector position = new PVector();
PVector speed = new PVector(5, 8);

Walker walker = new Walker();

void draw() 
{
  
 walker.render();
 walker.randomWalk();
 walker.moveAndBounce();
}

void setup() 
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker walker1 = new Walker();
Walker walker2 = new Walker();

void draw() 
{
  walker1.render();
  walker1.randomWalk();
  
  walker2.render();
  walker2.randomWalkBiased(); 
}

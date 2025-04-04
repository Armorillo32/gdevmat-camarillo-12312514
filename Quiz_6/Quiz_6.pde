void setup() 
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw() 
{
  background(130);
  
  PVector mouse = mousePos();
  
  drawOuterGlow(mouse);
  drawInnerGlow(mouse);
  drawHandle(mouse);
  
  println(mouse.mag());
}

void drawHandle(PVector mouse) 
{
  strokeWeight(17);
  stroke(0); 
  mouse.normalize().mult(50);
  line(0, 0, mouse.x, mouse.y); // Handle line
  
  mouse.normalize().mult(50);
  line(0, 0, -mouse.x, -mouse.y); // Hanlde line (opposite direction)
}

void drawOuterGlow(PVector mouse) 
{
  strokeWeight(15);
  stroke(255, 0, 0, 150);
  line(0, 0, mouse.x, mouse.y);  // Outer glow line
  
  line(0, 0, -mouse.x, -mouse.y);  // Outer glow line (opposite direction)
}

void drawInnerGlow(PVector mouse) 
{
  strokeWeight(5);
  stroke(255);
  line(0, 0, mouse.x, mouse.y); // Inner glow line
  
  line(0, 0, -mouse.x, -mouse.y);  // Inner glow line (opposite direction)
}

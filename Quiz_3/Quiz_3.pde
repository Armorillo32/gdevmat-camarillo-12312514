int maxX, maxY;

void setup() 
{
  size(1020, 720, P3D); // Set the canvas size (width, height)
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
  
  maxX = width; 
  maxY = height;
  frameRate(60);
}

void draw() 
{
  float x = randomGaussian() * width / 2 + width / 2;
  float y = random(5) * maxY;
  
  float size = randomGaussian() * 10 + 30;
  size = constrain(size, 5, 600);
  
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  int alpha = int(random(10, 100));

  noStroke();
  
  fill(r, g, b, alpha);
  ellipse(x, y, size, size);  
}

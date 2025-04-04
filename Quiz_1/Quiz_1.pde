void setup() 
{
  size(1020, 720, P3D);
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw() 
{
  background(50);
  
  drawCartesianPlane();
  drawQuadratic();
  drawLinear();
  drawSineWave();
}

void drawCartesianPlane() 
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);
}

void drawQuadratic() 
{
  color yellow = color(255, 255, 0);
  stroke(yellow);
  noFill();

  float prevX = -300;
  float prevY = (prevX * prevX - 15 * prevX - 3) * -0.05;

  for (float x = -299; x <= 300; x += 1) 
  {
    float y = (x * x - 15 * x - 3) * -0.05;
    line(prevX, -prevY, x, -y);
    prevX = x;
    prevY = y;
  }
}
void drawLinear() 
{
  color purple = color(128, 0, 128);
  stroke(purple);
  noFill();

  float prevX = -300;
  float prevY = (-5 * prevX + 30) * -5;

  for (float x = -299; x <= 300; x += 1) 
  {
    float y = (-5 * x + 30) * -5;
    line(prevX, -prevY, x, -y);
    prevX = x;
    prevY = y;
  }
}

void drawSineWave() 
{
  color blue = color(0, 150, 255);
  stroke(blue);
  noFill();

  float prevX = -300;
  float prevY = 50 * sin(0.05 * prevX);

  for (float x = -299; x <= 300; x += 1) 
  {
    float y = 50 * sin(0.05 * x);
    line(prevX, -prevY, x, -y);
    prevX = x;
    prevY = y;
  }
}

class Walker 
{
  float x; 
  float y;
  
  void render()
  {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    float a = random(50, 100);
    
    fill(r, g, b, a);
    stroke(r, g, b, a);
    circle(x, y, 30);
  }
  
  void randomWalk() 
  {
    int direction = int(random(8));
    
    if (direction == 0) 
    {
      x +=10;
    }
    if (direction == 1) 
    {
      x -=10;
    }
    if (direction == 2) 
    {
      y +=10;
    }
    if (direction == 3) 
    {
      y -=10;
    }
    if (direction == 4) 
    {
      x +=10; 
      y +=10; 
    } 
    if (direction == 5) 
    { 
      x -=10; 
      y +=10; 
    } 
    if (direction == 6) 
    { 
      x +=10; 
      y -=10; 
    }
    if (direction == 7) 
    {
      x -=10; 
      y -=10; 
    }
  }
  
  void randomWalkBiased() 
  {
    float chance = random(1);

    if (chance < 0.4) 
    {
      x +=5;
    }
    else if (chance < 0.6) {
      x -=5;
    }
    else if (chance < 0.8) 
    {
      y -=5;
    } 
    else 
    {
      y +=5; 
    }
  }

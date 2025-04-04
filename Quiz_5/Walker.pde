public class Walker 
{
  PVector position;  // Position as a PVector
  PVector speed;     // Speed (velocity) as a PVector
  
  // Constructor to initialize position and speed
  Walker() {
    position = new PVector(width / 2, height / 2);  // Start at the center of the screen
    speed = new PVector(5, 8);  // Initial speed
  }
  
  void render()
  {
    // Random colors with alpha transparency
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    float a = random(50, 100);
    
    fill(r, g, b, a);
    stroke(r, g, b, a);
    circle(position.x, position.y, 30);  // Draw the walker as a circle
  }
  
  void randomWalk() 
  {
    int direction = int(random(8));  // Random direction
    
    // Move in the chosen direction (8 possible directions)
    if (direction == 0) 
    {
      position.x += 10;
    }
    if (direction == 1) 
    {
      position.x -= 10;
      }
    if (direction == 2) 
    {
      position.y += 10;
    }
    if (direction == 3) 
    {
      position.y -= 10;
    }
    if (direction == 4) 
    { 
      position.x += 10; 
      position.y += 10; 
    }
    if (direction == 5) 
    { 
      position.x -= 10; 
      position.y += 10; 
    }
    if (direction == 6) 
    { 
      position.x += 10; 
      position.y -= 10; 
    }
    if (direction == 7) 
    { 
      position.x -= 10; 
      position.y -= 10; 
    }
  }
  
  void randomWalkBiased() 
  {
    float chance = random(5);
    
    if (chance < 0.4) 
    {
      position.x += 5;
    }
    else if (chance < 0.6) 
    {
      position.x -= 5;
    }
    else if (chance < 0.8) 
    {
      position.y -= 5;
    }
    else 
    {
      position.y += 5;
    } 
  }
  
  void moveAndBounce() 
  {
    position.add(speed);
   
    if ((position.x > Window.right) || (position.x < Window.left))
 {
   speed.x *= -1;
 }
 
  if ((position.y > Window.top) || (position.y < Window.bottom))
 {
   speed.y *= -1;
 }
  }
}

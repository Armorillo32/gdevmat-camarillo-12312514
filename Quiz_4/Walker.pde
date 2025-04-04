public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  float scaleVal;
  float r, g, b;
  float t1 = 0.0;
  float t2 = 100.0;
  
  void render()
  {
    scaleVal = map(noise(t1), 0, 1, 5, 150);
    
    r = map(noise(t2), 0, 1, 0, 255) + random(-30, 30);
    g = map(noise(t2 + 100), 0, 1, 0, 255) + random(-30, 30);
    b = map(noise(t2 + 200), 0, 1, 0, 255) + random(-30, 30);
    fill(r, g, b);
    noStroke(); 
    circle(x, y, scaleVal);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
    
    t1 += 0.01f;
    t2 += 0.01f;
  }
}

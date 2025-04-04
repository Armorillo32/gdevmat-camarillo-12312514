public class Walker 
{
  PVector position = new PVector();
  float scale = 15;
  color col = color(255);

  void render() 
  {
    fill(col);
    noStroke();
    circle(position.x, position.y, scale);
  }
}

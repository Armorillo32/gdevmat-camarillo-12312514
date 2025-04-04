public class Walker 
{
  public PVector position = new PVector(); 
  public PVector velocity = new PVector(); 
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 5;
  public float scale = 15;
  
  public void update(PVector target) 
  {
    PVector direction = PVector.sub(target, this.position);
    float distance = direction.mag();
    
    if (distance > 50) 
    {
      direction.normalize();
      direction.mult(0.2);
      this.acceleration = direction;
    } 
    else 
    {
      this.acceleration = PVector.random2D().mult(0.05);
    }
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
}
  
  public void render()
  {
    fill(255);
    noStroke();
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges()
  {
    if (this.position.x > Window.right) {
      this.position.x = Window.left;
    } else if (this.position.x < Window.left) {
      this.position.x = Window.right;
    }

    if (this.position.y > Window.top) {
      this.position.y = Window.bottom;
    } else if (this.position.y < Window.bottom) {
      this.position.y = Window.top;
    }
  }
}

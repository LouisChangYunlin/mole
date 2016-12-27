class Enemy 
{

  float x, y ;
  PImage img ; 
  float speed=5 ; 
  int mean=1;

  // int life ; // if you want to make Boss class , use it.

  Enemy (float x, float y) 
  {
    img = loadImage("img/enemy.png");
    this.x=x;
    this.y=y;
  }

  void display ()
  {
    image(img, x, y);
  }
  void move () 
  {
    x=x+speed;
  }
  void hp()
  {
    hp=hp-39;
  }
  boolean isHit (int bx, int by, int bw, int bh )
  {
    boolean collisionX = (this.x + this.img.width >= bx) && (bx + bw >= this.x);
    boolean collisionY = (this.y + this.img.height >= by) && (by + bh >= this.y);
    return collisionX && collisionY;
  }
  boolean dead()
  {
    return mean<=0;
  }
}

class Bullet  
{
  int x, y;
  PImage img;
  int speed=3;
  boolean state;

  Bullet (int x, int y) 
  {
    img = loadImage("img/shoot.png");
    this.x=x;
    this.y=y;
    state=false;
  }
  void display()
  {
    image(img, x, y);
  }
  void move()
  {
    x=x-speed;
  }
  // https://gist.github.com/RadianSmile/7e612560ac37c9cd84d03fb0dfa32a19
}

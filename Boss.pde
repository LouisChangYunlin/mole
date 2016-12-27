

class Boss extends Enemy 
{
  Boss (float x, float y)
  {
    super(x, y) ;
    speed=3;
    img = loadImage("img/boss.png");
    mean=5;
  }
  void hp()
  {
    hp=hp-97.5;
  }
}

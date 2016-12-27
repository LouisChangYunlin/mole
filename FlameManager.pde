class FlameManager 
{

  PImage[] flameImgs = new PImage[5];

  private int[] flameFrameCount;
  private float[] flameX ; 
  private float[] flameY ;
  private int boomIndex = 0 ; 
  private int periodFrame  ; 


  FlameManager(int periodFrame ) 
  { 

    this.periodFrame = periodFrame ; 
    int bufferSize = 10 ;    // bufferSize 意指，可以緩存幾個火焰，越大就越不容易有火焰突然不見的問題。

    for (int i = 0; i < 5; i++)
    {
      flameImgs[i] = loadImage("img/flame" + (i+1) +".png");
    }

    flameFrameCount = new int  [bufferSize]; 
    flameX          = new float[bufferSize] ; 
    flameY          = new float[bufferSize] ;

    for (int i = 0; i < flameFrameCount.length; i++)
    {
      flameFrameCount[i] = 9999 ;
    }
  }



  void display () 
  {
    for (int i = 0; i < 5; i++) 
    {
      flameFrameCount[i] ++ ;    
      int flameFrame = floor ( flameFrameCount[i] / (yourFrameRate/5) ) ; 
      if ( flameFrame < 5) 
      {
        image(flameImgs[flameFrame], flameX[i], flameY[i]);
      }
    }
  }


  void add (float x, float y) 
  {
    flameFrameCount[ boomIndex ] = 0;
    flameX [ boomIndex ] = x ;
    flameY [ boomIndex ] = y ;
    boomIndex ++ ;
    boomIndex %= 5 ;
  }
}

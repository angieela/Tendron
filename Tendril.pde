class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
   int startX = myX;
   int startY = myY;
   int endX;
   int endY;
   for(int i = 0; i < myNumSegments; i++){
     myAngle = (Math.random()*0.2)-0.2;
     endX = startX + cos(myAngle*len);
     endY = startY + sin(myAngle*len);
     line(startX,startY,endX,endY);
     startX = endX;
     startY = endY;
    }
  }
  public void show()
  {
    if(myNumSegments >= 3)
      Cluster(len,endX,endY);
    else
      myNumSegments++;
    if(len <10)
      stroke(0,0,255);
     else if (len < 20)
       stroke(0,255,0);
     else 
       stroke(255,0,0);
  } 
}

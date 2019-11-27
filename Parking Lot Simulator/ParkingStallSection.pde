class ParkingStallSection
{
  int x;
  int y;
  
  int stallWidth; 
  int stallHeight;
  int sectionNum;

  ParkingStallSection(int X, int Y, int sW, int sH, int n)   
  {
    x = X;
    y = Y;

    stallWidth = sW;
    stallHeight = sH;
    sectionNum = n;
  }

  void drawSection(int x, int y, int stallWidth, int stallHeight, int h)  //draws a singular parking stall section. 10 parking stalls
  {
    int w = 0;

    ParkingStall [][] s = new ParkingStall[2][5];
 
    for (int i = 0, t = 0; i < 2; i++)
    {
      for (int j = 0; j < 5; j++, w++)
      {
        if (h == 1 && t == 0) {
          t+=1;
        }
        if (h == 2 && t== 0) {
          t+=2;
        }
        if (h == 3 && t == 0) {
          t+=3;
        }
        if (h == 4 && t == 0) {
          t+=4;
        }
        if (h == 5 && t == 0) {
          t+=5;
        }

        if (w >= 10) {
          w = 0;
        }
        if (t == 6) {
          t = 0;
        }

        s[i][j]= new ParkingStall(x + (stallWidth * j), y + (stallHeight * i), 72, 45, parking_array[t][w]); 
        s[i][j].drawStall(parking_array[t][w]);
      }
    }
  }
}
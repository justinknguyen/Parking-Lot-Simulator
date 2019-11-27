class ParkingLot
{
  void drawLot(int x, int y, int Width, int Height)  //draws the parking lot
  {
    strokeWeight(4);
    stroke(255);
    fill(96, 96, 96);
    rect(x, y, Width, Height);
  }

  void drawGate(int x, int y, int Width, int Height)  //draws the gate streets
  { 
    strokeWeight(0);
    stroke(96, 96, 96);
    fill(96, 96, 96);
    rect(x, y, Width, Height);
  }

  void drawGateborder(int x, int y, int Width, int Height)  //draws the gate streets borders
  {
    strokeWeight(5);
    stroke(255);
    fill(96, 96, 96);
    rect(x, y, Width, Height);
  }

  void drawStalls(int y)              //draws each parking stall sections 6 times. 3 times for left side, and 3 times for right side. 60 total stalls
  {
    ParkingStallSection [] sections = new ParkingStallSection[6];
    int Y = y; 

    //LEFT
    for (int i = 0; i < 3; i++)
    {
      sections[i] = new ParkingStallSection(55, Y, 75, 48, i);
      sections[i].drawSection(55, Y, 75, 48, i);
      Y += 130;
    }

    //RIGHT
    for (int j = 3; j < 6; j++)
    {
      sections[j]= new ParkingStallSection(545, Y-130, 75, 48, j);
      sections[j].drawSection(545, Y-130, 75, 48, j);
      Y -= 130;
    }
  }
}
class Gate
{
  int x, y;
  boolean status; 

  Gate (int X, int Y) //dimensions of the gates
  {
    x = X;
    y = Y;
  }

  void statusGate () //decides whether or not the gate is opened or closed
  {
    status = (foo());
  }

  boolean foo()     //returns true or false to statusGate
  {
    int counter = 0;

    for (int i = 0; i < 6; i++)   
    {
      for (int j = 0; j < 10; j++)
      {
        if (parking_array[i][j])    //goes through each parking stall in the array
          counter++;
      }
    }

    if (counter == 60) //if all 60 stalls are occupied, then close gate
    {
      counter = 0;
      return false;
    } else            //if not all 60 stalls are occupied, then open gate
    {
      counter= 0;
      return true;
    }
  }

  void drawGates()
  {
    if (status == true)           //open gate
    {
      noStroke();

      //NORTH GATE
      fill(0);
      quad(x, y, x+10, y, x+60, y-19, x+50, y-19);
      fill(#00FF2C);
      ellipse(x+5, y, 10, 10);

      //SOUTH GATE
      fill(0);
      quad(x+10, y+411, x+20, y+411, x+70, y+394, x+60, y+394);
      fill(#00FF2C);
      ellipse(x+65, y+394, 10, 10);
    } else if (status == false)     //close gate
    {
      noStroke();

      //NORTH GATE
      fill(0);
      quad(x, y-2, x+10, y+2, x+65, y+2, x+65, y-2);
      fill(#FF0000);
      ellipse(x+5, y, 10, 10);

      //SOUTH GATE
      fill(0);
      quad(x+10, y+411, x+20, y+411, x+70, y+394, x+60, y+394);
      fill(#00FF2C);
      ellipse(x+65, y+394, 10, 10);
    }
  }
}
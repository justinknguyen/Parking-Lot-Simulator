class ParkingArray
{
  int I = 0; //rows
  int J = 0; //columns

  void EnterArray() 
  {
    if (enter)                      //enter the parking lot
    {
      for (int I=(int)(random(0, 6)), J=(int)(random(0, 10)), i = 0; i <= 10000; i++)   //randomly goes through each cell of the array, up to 10,000 times
      {
        if (parking_array[I][J]== false) //if the parking stall is open
        {
          parking_array[I][J] = true;   //change the parking stall status to occupied
          spaceopen--;                 //spaces open when a car parks
          enter = false;           //updates parking status

          break;        //breaks out of the loop
        }
      }
    } else if (left)              //leave the parking lot
    {
      for (int I=(int)(random(0, 6)), J=(int)(random(0, 10)), i = 0; i <= 1000; i++)   //randomly goes through each cell of the array, up to 10,000 times
      {
        if (parking_array[I][J]== true)  //if the parking stall is occupied
        {
          parking_array[I][J] = false;   //change the parking stall status to open
          spaceopen++;                   //spaces open when a car leaves
          left = false;           //updates parking stall status

          i = 1001;      //breaks out of the loop
        }
      }
    }
  }
}
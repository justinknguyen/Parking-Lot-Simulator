class ParkingStall
{
  boolean occupied;

  float stallWidth;
  float stallHeight;
  float posX;
  float posY;

  ParkingStall(float x, float y, float w, float h, boolean b)  //dimensions of the stall
  {
    occupied = b;
    posX = x;
    posY = y;
    stallWidth = w;
    stallHeight = h;
  }

  void drawStall(boolean b)                           //draws the stall
  {
    occupied = b;

    if (occupied)                                    //red stall or occupied stall
    {
      fill(#FF0000);                                    
      strokeWeight(2);
      stroke(255);
      rect(posX, posY, stallWidth, stallHeight);
      strokeWeight(1);

      fill(#626464);
      Car parked = new Car(int(posX-10), int(posY-8), p);  //draws parked car
      parked.drawCar(int(posX-3), int(posY-8));
    } else                                              //green stall or open stall
    {
      fill(color(152, 251, 152));                      
      strokeWeight(2);
      stroke(255);
      rect(posX, posY, stallWidth, stallHeight);
      strokeWeight(1);
    }
  }
}
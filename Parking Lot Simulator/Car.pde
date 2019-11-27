class Car
{
  int x, y, speedX, speedY, time;
  boolean parking, parked, leaving;

  color c = color(random(255), random(255), random(255));   //randomly sets car's colour

  Car (int X, int Y, int P)          //dimensions of car
  {
    x = X;
    y = Y;
    p = P;

    int r = int(random(1, 3));

    if (r == 2)                 //1 in 3 chance of parking
    {
      parking = true;
    }
  }

  void move(int a, int b)
  {
    speedX = a;            //sets x and y speed
    speedY = b;

    fill(c);

    if (start)                    //if user presses start
    {
      if (y < 161)                //draw cars spawning
      {
        drawCar(x, y);
      }
      
      if (parking && x >= 449)    //parking speed
      {
        speedX = 0;
        speedY = 2;
      }
      
      if (y < 190 && y >= 161 && x < 499 && status.status == true)  //draw cars parking. status.status is the gate's status
      {
        drawCarparking(x, y);
        speedX = 1;
        speedY = 0;
      }
      
   
   

      if (x == 496 && parking) //creates new time for each car
      {
        parked = true;
        time = car.newTime();
      }

      if (x == 496)         //enters a parking stall
      {
        enter = true;
      }

      if (car.leave(time, parked))   //leaves the parking lot
      {
        leaving = true;
        enter = false;
        left = true;
      }
      
      if (y > 161 && x > 498)   //leaving speed
      {
        speedX = 0;
        speedY = 0;
      }
      
      if (leaving)         //car leaving parking lot
      {
        fill(c);
        drawCar(x-50, y+500);
        speedX= 3;
        speedY= 0;

        parked = false;
      }     
      x += speedX;
      y += speedY;
    }
  }

  void drawCar(int X, int Y)
  {
    int x = X;
    int y = Y;

    strokeWeight(1);
    stroke(0);

    quad(x+20, y+20, x+60, y+20, x+60, y+40, x+20, y+40); //body

    fill(#888982);
    quad(x+25, y+22, x+28, y+22, x+28, y+38, x+25, y+38); //back window
    quad(x+40, y+22, x+46, y+22, x+46, y+38, x+40, y+38); //front window   

    fill(0);
    quad(x+22, y+18, x+32, y+18, x+32, y+20, x+22, y+20); //left back wheel
    quad(x+22, y+40, x+32, y+40, x+32, y+42, x+22, y+42); //right back wheel

    quad(x+48, y+18, x+58, y+18, x+58, y+20, x+48, y+20); //left front wheel
    quad(x+48, y+40, x+58, y+40, x+58, y+42, x+48, y+42); //right front wheel

    fill(#F7FA51);
    quad(x+58, y+20, x+60, y+20, x+60, y+25, x+58, y+25); //left headlight
    quad(x+58, y+35, x+60, y+35, x+60, y+40, x+58, y+40); //right headlight
  }

  void drawCarparking(int X, int Y)
  {
    int x = X-265;
    int y = -Y-350;

    strokeWeight(1);
    stroke(0);

    rotate(radians(90));
    quad(x+20, y+20, x+60, y+20, x+60, y+40, x+20, y+40); //body

    fill(#888982);
    quad(x+25, y+22, x+28, y+22, x+28, y+38, x+25, y+38); //back window
    quad(x+40, y+22, x+46, y+22, x+46, y+38, x+40, y+38); //front window   

    fill(0);
    quad(x+22, y+18, x+32, y+18, x+32, y+20, x+22, y+20); //left back wheel
    quad(x+22, y+40, x+32, y+40, x+32, y+42, x+22, y+42); //right back wheel

    quad(x+48, y+18, x+58, y+18, x+58, y+20, x+48, y+20); //left front wheel
    quad(x+48, y+40, x+58, y+40, x+58, y+42, x+48, y+42); //right front wheel

    fill(#F7FA51);
    quad(x+58, y+20, x+60, y+20, x+60, y+25, x+58, y+25); //left headlight
    quad(x+58, y+35, x+60, y+35, x+60, y+40, x+58, y+40); //right headlight
    rotate(radians(-90));
  }
}
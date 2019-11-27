int minutes;
int hours;
int days;
int days_display = 1;      //starts week off from Monday
int accum_hours;                         //time elapsed
boolean start = false;                   //start and starter is how the timer starts and stops (under ParkingLotSimulator)
boolean starter;
float rate;                             //rate of cost of the parking lot

class StopWatchTimer
{
  void drawTimer()                     //draws the timer
  {
    time();
  }

  void drawChange()                  //draws streetlights and background effect
  {
    timechange();
  }
}

void time()
{ 
  strokeWeight(3);        
  stroke(0);
  fill(105);
  rect(750, 0, 210, 25);

  if (days_display < 7)                        //calculates the rate of parking
  {
    rate = 3;
  } else
  {
    rate = 1.5;
  }

  if (hours >= 0 && hours < 12)       //draws the sun
  {
    strokeWeight(3);
    stroke(0);
    fill(#32B2E3);
    rect(860, 30, 107, 107);
    fill(#F3FF4D);
    ellipse(914, 82, 80, 80);
  }
  if (hours >= 12 && hours < 24)     //draws the moon
  {
    strokeWeight(3);
    stroke(255);
    fill(0);
    rect(860, 30, 107, 107);
    strokeWeight(0);
    stroke(0);
    fill(255);
    ellipse(914, 82, 80, 80);
    fill(0);
    ellipse(904, 82, 65, 65);
  }

  if (start)                               //starts the timer
  {
    if (int(millis()/100)  % 10 != minutes)   //counts up minutes
    {
      minutes++;
    }
    if (minutes >= 60)                      //counts up hours and accumulated hours/time elapsed
    {
      minutes -= 60;
      hours++;
      accum_hours++;
    }
    if (hours >= 24)                       //counts up number of days elapsed
    {
      hours -= 24;
      days++;
      days_display++;
    }
    if (days_display > 7)                 //resets the displayed day back to starting day 
    {
      days_display -= 7;
    }
  }

  textAlign(CENTER);                        //displays the timer
  fill(255);
  textSize(15);
  text(nf(days, 1) + "d " + ":" + nf(hours, 2) + "h " + ":" + nf(minutes, 2) + "m ", 900, 20);

  if (days_display == 1)                //displays the day of the week
  {
    text("Monday", 800, 20);
  }
  if (days_display == 2)
  {
    text("Tuesday", 800, 20);
  }
  if (days_display == 3)
  {
    text("Wednesday", 800, 20);
  }
  if (days_display == 4)
  {
    text("Thursday", 800, 20);
  }
  if (days_display == 5)
  {
    text("Friday", 800, 20);
  }
  if (days_display == 6)
  {
    text("Saturday", 800, 20);
  }
  if (days_display == 7)
  {
    text("Sunday", 800, 20);
  }
}

void timechange()                   //draws streetlights and background effect
{
  if (hours >= 0 && hours < 12)    //day time
  {
    background (0, 150, 0);

    noStroke();

    fill(0, 150, 0);
    ellipse(370, 130, 40, 40);
    fill(#A1A793);
    ellipse(370, 130, 20, 20);

    fill(0, 150, 0);
    ellipse(621, 130, 40, 40);
    fill(#A1A793);
    ellipse(621, 130, 20, 20);

    fill(0, 150, 0);
    ellipse(370, 735, 40, 40);
    fill(#A1A793);
    ellipse(370, 735, 20, 20);

    fill(0, 150, 0);
    ellipse(621, 735, 40, 40);
    fill(#A1A793);
    ellipse(621, 735, 20, 20);

    fill(0, 150, 0);
    ellipse(15, 340, 40, 40);
    fill(#A1A793);
    ellipse(15, 340, 20, 20);

    fill(0, 150, 0);
    ellipse(15, 540, 40, 40);
    fill(#A1A793);
    ellipse(15, 540, 20, 20);

    fill(0, 150, 0);
    ellipse(961, 340, 40, 40);
    fill(#A1A793);
    ellipse(961, 340, 20, 20);

    fill(0, 150, 0);
    ellipse(961, 540, 40, 40);
    fill(#A1A793);
    ellipse(961, 540, 20, 20);
  }
  if (hours >= 12 && hours < 24)   //night time
  {
    background (#1F670B);

    noStroke();

    fill(#DDE032);
    ellipse(370, 130, 40, 40);
    fill(#A1A793);
    ellipse(370, 130, 20, 20);

    fill(#DDE032);
    ellipse(621, 130, 40, 40);
    fill(#A1A793);
    ellipse(621, 130, 20, 20);

    fill(#DDE032);
    ellipse(370, 735, 40, 40);
    fill(#A1A793);
    ellipse(370, 735, 20, 20);

    fill(#DDE032);
    ellipse(621, 735, 40, 40);
    fill(#A1A793);
    ellipse(621, 735, 20, 20);

    fill(#DDE032);
    ellipse(15, 340, 40, 40);
    fill(#A1A793);
    ellipse(15, 340, 20, 20);

    fill(#DDE032);
    ellipse(15, 540, 40, 40);
    fill(#A1A793);
    ellipse(15, 540, 20, 20);

    fill(#DDE032);
    ellipse(961, 340, 40, 40);
    fill(#A1A793);
    ellipse(961, 340, 20, 20);

    fill(#DDE032);
    ellipse(961, 540, 40, 40);
    fill(#A1A793);
    ellipse(961, 540, 20, 20);
  }
}
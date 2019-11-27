class PriceCalculator
{
  int T;                //total value in lot
  int h, d, m, t;       //time of car in stall + time it entered
 
  PriceCalculator(int hour, int day, int minutes)
  {
    h = hour;
    d = day;
    m = minutes;
 
    t = getHours(hours, days_display);   //current time of Timer. takes hours and days from Timer.
  } 
  
  int getHours(int H, int d)   //calculates the total hours and sends it back to t
  {
    int hoursTotal = 0;
    hoursTotal += H;                    
    hoursTotal += d*24;

    return hoursTotal;
  }
  
  int newTime()                
  {
    int time = getHours(int(random(1, 24)), 0); //sets h and time to a random hour of the day
    h = time;                                            
  
    return time;    //returns time to class Car
  }

  float carPrice() 
  {
    int timer = t;          //total hours
    float carTime = h;      //total hours at random of the car's stay

    carTime = timer - carTime; //caculates the car's parking fee
    carTime *= -rate;
    
    fee = 0;              //displays the fee paid by car
    fee += carTime;        
    
    Customers_paid++;      //counts the number of customers who paid
    
    return carTime;
  }

  boolean leave(int hour, boolean parked) //decides whether or not to leave the parking lot
  {
    boolean leave = false;

    if (hour == getHours(hours, 0) && parked)
    {
      leave = true;
      TotalRev += carPrice();        //adds the car's fee to the total revenue
    }
    return leave;
  }
}
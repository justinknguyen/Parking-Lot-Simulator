int timeCheck;       //car spawn values
int timeInterval;
ArrayList<Car> cars = new ArrayList();
int p = 0;

boolean enter;  //updates parking status
boolean left;
int spaceopen = 60;  //sets spaces open to 60
boolean [][] parking_array = {{false, false, false, false, false, false, false, false, false, false},  //parking array
                              {false, false, false, false, false, false, false, false, false, false}, 
                              {false, false, false, false, false, false, false, false, false, false}, 
                              {false, false, false, false, false, false, false, false, false, false}, 
                              {false, false, false, false, false, false, false, false, false, false}, 
                              {false, false, false, false, false, false, false, false, false, false}};

PriceCalculator car = new PriceCalculator(-1, 7, 0);  //price calculator values
float TotalRev = 0;  
int Customers_paid;

Gate status = new Gate(450, 239);         //sends dimensions to Gate and class Car uses status to decide whether or not to park                    
float fee; //fee for parking


void setup()
{
  size(975, 750);
  background (0, 150, 0);
}

void draw()
{
  Draw d = new Draw();
  d.drawprogram();                                            //draws program

  //CAR SPAWN
  timeInterval = (int(random(400, 40000)));                 //sets a time interval for each car added

  if ( millis() > timeCheck + timeInterval ) 
  {
    timeCheck = millis();
    cars.add( new Car(-60, 160, p) );                      //adds a new car
    p++;
  }

  for ( Car car : cars )                                  //enhanced for loop that repeatedly draws a car and moves it
  {
    car.drawCar(-60, 160);
    car.move(3, 0);
  }
}

void mouseClicked() 
{
  if (mouseY <= 130 && mouseY >= 30)
  {
    if (mouseX <= 580 && mouseX >= 480)               //stop program
    {
      starter = false;
    }
    if (mouseX <= 470 && mouseX >= 400)               //start program
    {
      starter = true;
    }
    start = starter;
  }
}
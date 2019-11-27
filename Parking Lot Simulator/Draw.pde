class Draw
{
  void drawprogram() //calls everything from each class
  { 
    ParkingArray enter = new ParkingArray(); //an array that is able to show the whether the parking stall is open or occupied 
    enter.EnterArray();

    StopWatchTimer btime = new StopWatchTimer(); //draws street lights and background effect
    btime.drawChange();

    ControlPanel PRates = new ControlPanel(10, 20, width/4, height/8, 0, "3.00", "1.50", "");
    PRates.drawLeftConsole(20, 30, width/3, height/7);   //draws left console

    PRates.drawCentreConsole(400, 30, width/5, height/7);  //draws centre console

    ParkingLot gate_borders = new ParkingLot();    
    gate_borders.drawGateborder(453, 200, 62, 50);   //draws north gate street border
    gate_borders.drawGateborder(453, 620, 62, 50);   //draws south gate street border

    Street str = new Street();
    str.drawStreet("North City Street", -10, 150, width+20, 70); //draws north street
    str.drawStreet("South City Street", -10, 650, width+20, 70); //draws south street

    ParkingLot box = new ParkingLot(); 
    box.drawLot(30, 240, width-60, 390); //draws the parking lot
    box.drawStalls(260);                 //draws the 60 parking stalls

    ParkingLot gate_str = new ParkingLot(); 
    gate_str.drawGate(455, 200, 60, 50);    //draws north gate street
    gate_str.drawGate(455, 620, 60, 50);    //draws south gate street

    StopWatchTimer dtime = new StopWatchTimer(); //draws the timer
    dtime.drawTimer();

    ControlPanel SimValues = new ControlPanel(10, 20, width/4, height/8, accum_hours, " hours", "", "");  //right console
    SimValues.drawRightConsole(650, 30, width/5, height/7);

    //GATES
    status.statusGate();            //status of the gate
    status.drawGates();             //draws gates
    SimValues.drawSigns(spaceopen); //draws the signs
  }
}
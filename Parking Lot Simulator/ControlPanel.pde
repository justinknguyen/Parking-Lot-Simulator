class ControlPanel
{
  int x, y, w, h, value_1;
  String one, two, three;

  ControlPanel (int z, int r, int p, int q, int j, String T, String P, String C)
  {
    x = z;
    y = r;
    w = p;
    h = q;
    value_1 = j;
    one = T;
    two = P;
    three = C;
  }

  void drawSigns(int spaces)
  {
    //NORTH SIGN
    fill(0);
    rect(370, 220, 70, 35);
    fill(255);
    rect(373, 222, 64, 14);
    fill(#29FCFB);
    rect(373, 239, 64, 14);

    fill(0);
    textSize(12);
    text("Entrance", 404, 234);
    text("Open: " + spaces, 402, 250);

    //SOUTH SIGN
    fill(0);
    rect(530, 616, 78, 35);
    fill(255);
    rect(533, 618, 72, 14);
    fill(#29FCFB);
    rect(533, 635, 72, 14);

    fill(0);
    text("Exit", 568, 630);
    textSize(10);
    text("Fee: $" + fee + '0', 568, 646);
  }

  void drawLeftConsole (int x, int y, int w, int h)
  {
    strokeWeight(3);
    stroke(0);
    fill(105);
    rect(x, y, w, h);
    fill(255);
    textSize(18);
    text("Parking rates:", x+80, y+25);
    textSize(14);
    text("$" + one +  "/ Hour  Mon-Sat    8:00AM-6:00PM", x+161, y+60);
    text("$" + two +  "/ Hour  Sun    8:00AM-6:00PM", x+143, y+90);
  }

  void drawCentreConsole (int x, int y, int w, int h)
  {
    fill(105);
    rect(x, y, w, h);

    ellipse((x+w/4), y+((w/2)-20)/2+15, (w/2)-20, (w/2)-20);
    ellipse((x+3*w/4), y+((w/2)-20)/2+15, (w/2)-20, (w/2)-20);

    fill(#18F048);
    triangle(430, 60, 430, 100, 475, 80);
    fill(#FF2929);
    rect(523, 60, 45, 45);
  }

  void drawRightConsole (int x, int y, int w, int h)
  {
    strokeWeight(3);
    stroke(0);
    fill(105);
    rect(x, y, w, h);
    fill(255);
    textSize(18);
    text("Simulation Values:", x+90, y+25);
    textSize(14);
    text("Net Profit:    $" + TotalRev + '0', x+82, y+55);
    text("Time Elapsed:   " + value_1 + one, x+93, y+75);
    text("Customers:    " + Customers_paid, x+64, y+95);
  }
}
class Street
{
  void drawStreet (String s, int x, int y, int w, int h)  //draws the streets
  {
    strokeWeight(3);
    stroke(255);
    fill(96, 96, 96);
    rect(x, y, w, h);
    fill(255);
    textSize(18);
    text(s, x+(w/2-10), y+(h/2+5));
  }
}
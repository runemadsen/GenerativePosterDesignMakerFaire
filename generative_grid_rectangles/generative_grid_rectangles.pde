float xPos = 0;
float yPos = 0;
float rectSize;;

void setup()
{
  size(2180, 3000);
  noStroke();
  rectSize = width / random(4, 10);
  //background(0);
  //colorMode(HSB, 360, 100, 100);
  //smooth();
 
  while(yPos < height)
  {
    fill(random(30, 200));
    rect(xPos, yPos, rectSize, rectSize);
    xPos += rectSize;
    if(xPos > width)
    {
      xPos = 0;
      yPos += rectSize;
    }
  }
  
  saveFrame("poster_" + year() + "_" + day() + "_" + minute() + "_" + second() + ".jpg");
}

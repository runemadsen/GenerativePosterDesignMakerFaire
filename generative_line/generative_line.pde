float xPos;
float yPos;
boolean goingHorizontal;
float ran;
float strokeWidth;

void setup()
{
  size(2180, 3000);
  colorMode(HSB, 360, 100, 100);
  background(2, 0, 5);
  
  
  xPos = width / 2;
  yPos = height / 2;
  strokeWidth = random(100, 1000);
  
  strokeWeight(strokeWidth); // set to specific number first
  
  while(xPos < width + strokeWidth && xPos > 0 - strokeWidth && yPos > 0  - strokeWidth && yPos < height + strokeWidth)
  {
    //stroke(random(0, 360), 70, 68);
    stroke(1, 86, random(30, 100));
    ran = random(-1500, 1500);
    goingHorizontal = random(0, 1) < 0.5 ? true : false;
    
    if(goingHorizontal)
    {
      line(xPos, yPos, xPos + ran, yPos);
      xPos += ran;
    }
    else
    {
      line(xPos, yPos, xPos, yPos + ran);
      yPos += ran;
    }
  }
  
  saveFrame("poster_" + year() + "_" + day() + "_" + minute() + "_" + second() + ".jpg");
}

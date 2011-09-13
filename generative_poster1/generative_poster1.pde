void setup()
{
  size(2180, 3000);
  background(255, 255, 255);
  
  float xPos = width / 2;
  float yPos = height / 2;
  
  strokeWeight(100);
  
  while(xPos < width && xPos > 0 && yPos > 0 && yPos < height)
  {
    float xEnd = random(-1500, 1500);
    float yEnd = random(-1500, 1500);
    
    stroke(random(0, 200));
    line(xPos, yPos, xPos + xEnd, yPos + yEnd);
    
    xPos += xEnd;
    yPos += yEnd;
  }
  
  saveFrame("poster.jpg");
}

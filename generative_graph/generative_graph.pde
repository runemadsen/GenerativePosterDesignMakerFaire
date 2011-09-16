float xPos;
float yPos;
float range;

void setup()
{
  //size(400, 400);
  size(2180, 3000);
  noStroke();
  background(0);
  smooth();
  colorMode(HSB, 360, 100, 100);
  
  xPos = 0;
  yPos = height / 2;
  range = random(0.0001, 0.001);
  
  fill(random(0, 360), 90, 100);
  
  beginShape();
 
  while(xPos < width)
  {
    vertex(xPos, noise(yPos) * height);
    yPos += range;
    xPos++;
  }
  
  vertex(width, height);
  vertex(0, height);
  
  endShape(CLOSE);
  
  saveFrame("poster_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".jpg");
}

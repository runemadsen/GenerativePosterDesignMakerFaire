void setup()
{
  //size(400, 400);
  size(2180, 3000);
  noStroke();
  background(0);
  smooth();
  colorMode(HSB, 360, 100, 100);
  
  float numWaves = random(3, 10);
  
  for(int i = 0; i < numWaves; i++)
  {
     drawGraph((height / numWaves) * i);
  }
    
  saveFrame("poster_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".jpg");
}

void drawGraph(float yPos)
{
  float xPos = 0;
  float range = random(0.0001, 0.002);
  float counter = random(0, 500);
  
  //fill(random(0, 360), 90, 100);
  fill(0, 85, random(0, 100));
  beginShape();
 
  while(xPos < width)
  {
    vertex(xPos, yPos + (noise(counter) * 700));
    counter += range;
    xPos++;
  }
  
  vertex(width, height);
  vertex(0, height);
  
  endShape(CLOSE);
}

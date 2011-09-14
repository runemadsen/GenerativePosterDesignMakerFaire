float yPos = 100;
float circle_size = 700;

void setup()
{
  size(2180, 3000);
  noStroke();
  background(0);
  colorMode(HSB, 360, 100, 100);
  smooth();
 
  while(yPos < height)
  {
    fill(random(0, 360), 60, 60);
    ellipse(width / 2, yPos, circle_size, circle_size);
    yPos += circle_size + (circle_size / 5);
  }
  
  saveFrame("poster_" + year() + "_" + day() + "_" + minute() + "_" + second() + ".jpg");
}

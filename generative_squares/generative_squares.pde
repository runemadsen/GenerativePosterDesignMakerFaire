float yPos = -500;
float ran;
int displace = 400;

void setup()
{
  size(2180, 3000);
  noStroke();
 
  while(yPos < height)
  {
    ran = random(30, 700);
    fill(random(0, 255), random(0, 255), random(0, 255));
    quad(0, yPos, width, yPos + displace, width, yPos + displace + ran, 0, yPos + ran);
    yPos += ran;
  }
  
  saveFrame("poster_" + year() + "_" + day() + "_" + minute() + "_" + second() + ".jpg");
}

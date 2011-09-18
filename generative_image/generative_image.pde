int xPos = 0;
int yPos = 0;
PImage img;
int ellipseSize = 20;

void setup() 
{  
  size(2180, 3000);
  //size(200,200);
  colorMode(HSB);
  smooth();
  noStroke();
  
  img = loadImage("sunflower.jpg");
  image(img, 0, 0, width, height);
  loadPixels();
  background(0);
  //ellipseMode(CORNER);

  for (int x = 0; x < width; x += ellipseSize) 
  {
    for (int y = 0; y < height; y += ellipseSize) 
    {
      int loc = x + y * width;
      
      float h = hue(pixels[loc]);
      float s = saturation(pixels[loc]);
      float b = brightness(pixels[loc]);
      
      h += random(-30, 30);  
      
      fill(h, s, b);
      float ran = 0;//random(-100, 0);
      ellipse(x + random(-10, 10), y + random(-10, 10), ellipseSize + ran, ellipseSize + ran);
    }
  } 
  
  saveFrame("poster_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".jpg");
}

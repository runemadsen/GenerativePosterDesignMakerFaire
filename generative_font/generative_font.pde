float xPos = 0;
float yPos = 0;
PFont myFont;
int fontSize = 400;
String sentence = "RUNEISAWESOMEICANTBELIEVETHATHECANTEACHMETHIS";
int curChar = 0;

void setup()
{
  size(2180, 3000);
  noStroke();
  background(0);
  smooth();
  fontSize = int(random(200, 600));
  
  myFont = createFont("Helvetica-Bold", fontSize);
  textFont(myFont);
 
  while(yPos < height - fontSize)
  {
    fill(random(100, 255)); 
    text(sentence.charAt(curChar), xPos, yPos + fontSize - textDescent());
    
    xPos += textWidth(sentence.charAt(curChar));
    
    if(random(0, 10) > 9 || xPos > width - fontSize)
    {
      xPos = 0;
      yPos += textAscent();
    }
    
    curChar++;
    
    if(curChar >= sentence.length())
    {
      curChar = 0; 
    }
  }
  
  saveFrame("poster_" + year() + "_" + month()+ "_" + day() + "_" + minute() + "_" + second() + ".jpg");
}

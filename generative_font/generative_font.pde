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
  
  //println(textAscent());
  //println(textDescent());
 
  while(yPos < height - fontSize)
  {
    //fill(random(0, 360), 90, 100);
    fill(random(100, 255));
    //rect(xPos, yPos, textWidth("R") - 1, fontSize);
    
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

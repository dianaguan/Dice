Die one;
int totalRoll = 0;
void setup()
{
    noLoop();
    size(800,500);
    background(255);
}

void draw()
{
    //your code here
    totalRoll = 0;
    for(int y = 0; y<=400; y+=50){
       for(int x = 0; x<=800; x+=50){
          one = new Die(x,y);
          one.roll();
          one.show();
        }
    }
    noStroke();
    fill(255);
    rect(300,451,190,100);
    fill(120,33,240);
    text("Your total roll value is: " + totalRoll, 320, 480);

}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //variable declarations here
    int numDots, thisX, thisY, rectWidth, dVal;
    Die(int x, int y) //constructor
    {
        //variable initializations here
        
        thisX = x;
        thisY = y;
        rectWidth = 50;
    }
    void roll()
    {
      numDots = (int)(Math.random()*6)+1;
      return numDots;
      
    }
    void show()
    {
        //your code here
        stroke(10);
        fill(255);
        rect(thisX,thisY,rectWidth,rectWidth);
        if (numDots == 1){
        fill(0);
        ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
        totalRoll += 1;

        }
        if (numDots == 2){
          fill(0);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth/2),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/2),10,10);
          totalRoll += 2;


        }
        if (numDots == 3){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth*2/4), thisY+(rectWidth*2/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
          totalRoll += 3;

           
        }
        if (numDots == 4){
          fill(0);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth/3),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/3),10,10);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth*2/3),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth*2/3),10,10);
          totalRoll += 4;

            
        }
        if (numDots == 5){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*3/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
            totalRoll += 5;

        }
        if (numDots == 6){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/5),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*2.5/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*2.5/5),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*4/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*4/5),10,10);
            totalRoll += 6;

        }
    }
}

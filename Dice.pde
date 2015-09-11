Die one;
void setup()
{
    noLoop();
    size(800,500);

}
void draw()
{
    //your code here
    background(255);
    for(int y = 1; y<1000; y+=100){
      for(int x = 1; x<1000; x+=100){
        //ellipse(x,y,10,10);
        Die one = new Die(x,y);
        one.roll();
        one.show();
      }
    }

}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //variable declarations here
    int numDots, thisX, thisY, rectWidth;
    Die(int x, int y) //constructor
    {
        //variable initializations here
        //numDots = 6;
        thisX = x;
        thisY = y;
        rectWidth = 50;
    }
    void roll()
    {
      numDots = (int)(Math.random()*7)+1;

    }
    void show()
    {
        //your code here
        background(255);
        stroke(10);
        rect(thisX,thisY,rectWidth,rectWidth);
        if (numDots == 1){
          fill(0);
          ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
        }
        if (numDots == 2){
          fill(0);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth/2),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/2),10,10);
        }
        if (numDots == 3){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth*2/4), thisY+(rectWidth*2/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
        }
        if (numDots == 4){
          fill(0);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth/3),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/3),10,10);
          ellipse(thisX+(rectWidth/3), thisY+(rectWidth*2/3),10,10);
          ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth*2/3),10,10);
        }
        if (numDots == 5){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/4),10,10);
          ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*3/4),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
        }
        if (numDots == 6){
          fill(0);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/5),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*2.5/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*2.5/5),10,10);
          ellipse(thisX+(rectWidth/4), thisY+(rectWidth*4/5),10,10);
          ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*4/5),10,10);
        }
    }
}




































Die one;
void setup()
{
    noLoop();
    size(800,500);
    background(255);
}
void draw()
{
    //your code here

    // one = new Die(20,20);
    // one.roll();
    // one.show();
      for(int y = 1; y<=500; y+=50){
     	for(int x = 1; x<=800; x+=50){
	        one = new Die(x,y);
	        one.roll();
	        one.show();
      }
    }


}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //variable declarations here
    int numDots, thisX, thisY, rectWidth;
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
    }
    void show()
    {
        //your code here
        stroke(10);
        fill(255);
        rect(thisX,thisY,rectWidth,rectWidth);
        if (numDots == 1){
        	ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
        }
        if (numDots == 2){
        	ellipse(thisX+(rectWidth/3), thisY+(rectWidth/2),10,10);
        	ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/2),10,10);
        }
        if (numDots == 3){
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
        	ellipse(thisX+(rectWidth*2/4), thisY+(rectWidth*2/4),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
        }
        if (numDots == 4){
        	ellipse(thisX+(rectWidth/3), thisY+(rectWidth/3),10,10);
        	ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth/3),10,10);
        	ellipse(thisX+(rectWidth/3), thisY+(rectWidth*2/3),10,10);
        	ellipse(thisX+(rectWidth*2/3), thisY+(rectWidth*2/3),10,10);
        }
        if (numDots == 5){
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth/4),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/4),10,10);
        	ellipse(thisX+(rectWidth/2), thisY+(rectWidth/2),10,10);
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth*3/4),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*3/4),10,10);
        }
        if (numDots == 6){
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth/5),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth/5),10,10);
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth*2.5/5),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*2.5/5),10,10);
        	ellipse(thisX+(rectWidth/4), thisY+(rectWidth*4/5),10,10);
        	ellipse(thisX+(rectWidth*3/4), thisY+(rectWidth*4/5),10,10);
        }
    }
}


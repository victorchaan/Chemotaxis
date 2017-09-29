Bacteria [] colony;
void setup()   
{     
  colony = new Bacteria[9];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
  size(600, 600);
  background(0);
}   
void draw()   
{    
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY;
  //lots of java!
  Bacteria()
  {
    myX = 300;
    myY = 600;
    fill(#CD2DFA);
  }
  void show()
  {
    ellipse(myX, myY, 12, 12);
  }
  void move()
  {
    myX = myX + (int)(Math.random() * 11) - 5;
    myY = myY + (int)(Math.random() * 10) - 5;
  }
}   

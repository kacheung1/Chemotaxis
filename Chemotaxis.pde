Fish[] bob; 
 Food [] sob; 
 int x=100;
 void setup()   
 {     
   //initialize bacteria variables here 
   background (#AECFE0);
   size (500,500);
   bob = new Fish [10];
   for (int i =0; i<bob.length;i++)
   {
     bob [i]= new Fish ();
   }
   
   sob = new Food [2];
   for (int j =0; j<sob.length;j++)
   {
     sob [j]= new Food ();
   }
   
 }   
 void draw()   
 {    
   background (#AECFE0); 
   
   
  if (mouseX > x) 
  x= x+ (int) (Math.random() *5)-1;
  else 
  x= x+ (int) (Math.random ()*5)-3;
  
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
  }
  
   for (int j=0; j<sob.length; j++)
  {
    sob[j].show();
    
  }
  
  
   
 }  
 class Fish
 {     
   //lots of java!   
   int x, y;
   int myColor; 
   Fish ()
   {
     myColor= color((int)(Math.random () *256),(int)(Math.random () *256),(int)(Math.random () *256) );
   }
   
void walk ()
{
   
  if (mouseX > x) 
  x= x+ (int) (Math.random() *5)-1;
  else 
  x= x+ (int) (Math.random ()*5)-3;
  
  if (mouseY > y) 
  y= y+ (int) (Math.random() *5)-1;
  else 
  y= y+ (int) (Math.random ()*5)-3;
  
 }  
 
 void show ()
 {
   fill(myColor);
   ellipse (x+50, y, 34, 17); 
   triangle (x+ 65, y,x+80, y-10, x+80, y+15);
 }
 }
 
 class Food {
 
   void show ()
   {
     ellipse (mouseX,mouseY,34, 17);
   }
   

 }
 

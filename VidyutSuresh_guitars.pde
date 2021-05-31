// Program by Vid Suresh Neccid 00328694
// Draw a gGuitar Store
// Due Date May 6, 2021
// This work is my own in its entirety
//** Instructions***************************************************************************************************************
//To view electric guitars press letter "e" and to  To view Acoustic guitars press letter "a" and to quit press "q"
// The guitar shelf will not be visible without you pressing e or a keys
//** Instructions********************************************************************************************************************

//Declare arrays
int[] AcousticGuitarprice; // Declare
int[] ElectricGuitarprice; // Declare

//Declare  the class  Objects 

Acousticguitar myAcousticguitar; // starts class
Electricguitar myElectricguitar; // starts class
Cash mycash; // starts class
Chair mychair; // starts class
Door mydoor; // starts class
Shelf myshelf; // starts class



void setup () //start of setup
{ 

  size(1500,10000);// size of screen 
  background (240,255,240); // color of background
  //instantiate  the class  with Objects 
   myAcousticguitar = new Acousticguitar(); //instantiate new object of  the class
   myElectricguitar = new Electricguitar();//instantiate new object of  the class
   mycash= new Cash();//instantiate new object of  the class
    mychair = new Chair();//instantiate new object of  the class
    mydoor = new Door();//instantiate new object of  the class
    myshelf = new Shelf();//instantiate new object of  the class
}

void draw  () //start of void draw
{
  
  myshelf.displayshelf(); //displays shelf
  mydoor.displaydoor(); //displays door
  mychair.drawchair(); //displays chair
  mycash.displaycash(); //displays cash register
  
  displayStoreName();//display store name
  
  
  textSize(26); // txt size
  text("To view electric guitars press letter e and to  To view Acoustic guitars press letter a and to quit press q",  50, 35);
  fill(100, 102, 153); //color 

   if (keyPressed==true)// key pressed comands
      
      {
          if (key == 'a' || key == 'A')  // calls r key pressed
          {
              myAcousticguitar.drawacoustic(); //displays acoustic guitar
            //   displayacousticprice();
          }
          else if (key == 'e' || key == 'E')  // calls e key pressed
          {
              myElectricguitar.drawelectric(); //displays electric guitar
          }
          else if (key == 'q' || key == 'Q')// calls q key pressed
           {
              background (0,0,0); // background size
              textSize(26); // txt size
              text("Happy Guitar shopping May 06, 2021, Vidyut Suresh",  50, 75);
          }
        }
 
}

  
  // *******************class definations  start here*****************************************************

class Acousticguitar
{
  // Acousticguitar's variables/objects
  int R,G,B;
  int x,y,w,h;


  // Acousticguitar constructor
Acousticguitar()
{
    x = 0; // constructors
    y = 0; // constructors
   w = 0; // constructors
    h = 0; // constructors
    R= 0; // constructors
    G= 0; // constructors
    R= 0; // constructors
}

  // Display guitar
void drawacoustic ()

{
  int[] AcousticGuitarprice = new int[4]; // Create
    AcousticGuitarprice[0] = 19; // Assign
    AcousticGuitarprice[1] = 40;// array
    AcousticGuitarprice[2] = 75;// array
    AcousticGuitarprice[3] = 76;// array
    
      
 
  for (int x = 0; x<4; x++)
  
  {
   //guitar1
    fill(0) ;                   //The colour of the body
    ellipse(100+x*200, 300, 133, 133); //The body of the guitar
    ellipse(100+x*200, 400, 183, 183) ;//The body of the guitar
    rect(83+x*200, 5, 35, 450)  ;     //The neck of the guitar
    rect(75+x*200, 5, 50, 65);       //The head of the guitar
    fill(64,64,64) ;            //The colour of the "inside"
    ellipse(100+x*200, 330, 70, 70);   //The sound hole
    rect(66+x*200, 400, 70, 20) ;     //The bridge
    fill(64,64,64);             //The colour of the wires
    rect(88+x*200, 35, 2, 375) ;     //Wire nr 1
    rect(93+x*200, 25, 2, 385) ;     //Wire nr 2
    rect(98+x*200, 15, 2, 395);      //Wire nr 3
    rect(103+x*200, 15, 2, 395);      //Wire nr 4
    rect(108+x*200, 25, 2, 385) ;     //Wire nr 5
    rect(113+x*200, 35, 2, 375) ;     //Wire nr 6 
    
    
    
  }

//Load price from array
for (int i = 0; i < AcousticGuitarprice.length; i++)
    {
      fill(255, 255, 0); //color
  
          textSize(20);
         text("Price:$"+ AcousticGuitarprice[i],  40+i*200, 485);
  
    }
   
}

}

class Electricguitar //define class
{
  // Electricguitar's variables/objects
  int R,G,B;
  int x,y,w,h;


  // Electricguitar constructor
Electricguitar()
{
    x = 0; // constructors
    y = 0; // constructors
   w = 0; // constructors
    h = 0; // constructors
    R= 0; // constructors
    G= 0; // constructors
    R= 0; // constructors
}

  // Display Guitar
void drawelectric()
{
  
  
    int[] ElectricGuitarprice = new int[4]; // Create
    ElectricGuitarprice[0] = 19; // array
    ElectricGuitarprice[1] = 40;// array
    ElectricGuitarprice[2] = 75;// array
    ElectricGuitarprice[3] = 76;// array
    
    for (int x = 0; x<4; x++)
  
  {
   //guitar1
    fill(0) ;                   //The colour of the body
    ellipse(100+x*200, 800, 133, 133); //The body of the guitar
    ellipse(100+x*200, 900, 183, 183) ;//The body of the guitar
    rect(83+x*200, 505, 35, 450)  ;     //The neck of the guitar
    rect(75+x*200, 505, 50, 65);       //The head of the guitar
    fill(64,64,64) ;            //The colour of the "inside"
    ellipse(100+x*200, 830, 70, 70);   //The sound hole
    rect(66+x*200, 900, 70, 20) ;     //The bridge
    fill(64,64,64);             //The colour of the wires
    rect(88+x*200, 535, 2, 375) ;     //Wire nr 1
    rect(93+x*200, 525, 2, 385) ;     //Wire nr 2
    rect(98+x*200, 515, 2, 395);      //Wire nr 3
    rect(103+x*200, 515, 2, 395);      //Wire nr 4
    rect(108+x*200, 525, 2, 385) ;     //Wire nr 5
    rect(113+x*200, 535, 2, 375) ;     //Wire nr 6 
    
  }
  
  
       //Load price from array

  for (int i = 0; i < ElectricGuitarprice.length; i++)
  {
        fill(255, 0, 0); //color 
        textSize(25);// txt size
       text("Price:"+ ElectricGuitarprice[i],  65+i*200, 950);// txt 

  }
  
}


}

class Cash // defines class
{
  // Shelf's variables/objects
  int R,G,B;
  int x,y,w,h;


  // Cash constructor
Cash()
{
      x = 0; // constructors
      y = 0; // constructors
     w = 0; // constructors
      h = 0; // constructors
      R= 0; // constructors
      G= 0; // constructors
      R= 0; // constructors
}

  // Display cash
void displaycash() 
{
    
   fill (16, 51 ,92); //color 
    rect(1300, 150, 75, 100); // dimensions of shape
    
    // glass/ inside part
    fill(32, 2, 1); //color 
    rect(1310, 165, 40, 50); //dimension of shape
    
    // place where you get can thing from
    fill(167,167,167); //color
    rect(1307, 230, 60,10); //dimension of shape
    
    // money slot part
    fill(100,100,100); //color
    rect(1355,165, 15, 15); //dimension of shape
    
    // can #1
    fill( 201, 32, 26);//color
    rect( 1310,170, 7,12); // dimensions of shape
     
}

}

class Chair
{
  // Chair's variables/objects
  int R,G,B;
  int x,y,w,h;


  // Cash constructor
Chair()
{
    x = 0; // constructors
    y = 0; // constructors
   w = 0; // constructors
    h = 0; // constructors
    R= 0; // constructors
    G= 0; // constructors
    R= 0; // constructors
}

  // Display Chair
void drawchair()
{

  fill(255,240,255); //color
  rect(925,125,250,160);//dimensions of shape
  
  fill(255,200,255);//color
  rect(925,225,-80,190); //dimensions of shape
  
  fill(255,200,255);//color
  rect(1175,225,80,190);//dimensions of shape
  
  fill(255,170,255);//color
  rect(925,285,250,130);//dimensions of shape
  
  rect(925,225,-122,-40);//dimensions of shape
  rect(1175,185,122,40);//dimensions of shape
}

}

class Door
{
  // Door's variables/objects
  int R,G,B;
  int x,y,w,h;


  // Door constructor
Door()
{
    x = 0; // constructors
    y = 0; // constructors
   w = 0; // constructors
    h = 0; // constructors
    R= 0; // constructors
    G= 0; // constructors
    R= 0; // constructors
}

  // Display door
void displaydoor() 
{
       color c1=color(255,0,0);//color
    fill(c1);//color
    rect(1200,500,400.5,500);//dimension rect
    color c2=color(0);// color
    fill(0);//color
    ellipse(1220,725,25,25);//dimensions of shape
}

}

class Shelf
{
  // Shelf's variables/objects
  int R,G,B; // variable def
  int x,y,w,h; // variable def


  // cShelf constructor
Shelf()
{
    x = 0; // constructors
    y = 0; // constructors
   w = 0; // constructors
    h = 0; // constructors
    R= 0; // constructors
    G= 0; // constructors
    R= 0; // constructors
}

  // Display shelf
void displayshelf() 
{
    fill(185,255,201); //color 
    rect(13, 13, 800, 500); // shelf 1
    fill(127);//color 
    rect(13, 500, 800, 500); //shelf 2 //dimension of shape
}

}
 // *******************class definations  END  here*****************************************************


// *******************Normal functions  STATRT   here*****************************************************

void displayStoreName()
{
  
 rect(1200, 500, 700, 45, 7); // dimensions of rect
 fill(200, 255, 165); //color
 textSize(25); //size txt
 text("The Guitar Express",  1200, 520);// text
 fill(0, 200, 0); //color of store sign
 
}

// *******************Normal functions  STATRT   here*****************************************************


// This work is my own in its entirety

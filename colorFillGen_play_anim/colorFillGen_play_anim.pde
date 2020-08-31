//2017.06.08-2017.06.26 experiments by pavel.b.kr12 ????? ????????, ????

import controlP5.*;
ControlP5 cp5;

PImage flore=createImage(1024, 1024, ARGB);
PImage fire=createImage(1024, 1024, RGB);
 //https://processing.org/reference/createImage_.html





int myColorBackground = color(0,0,0);
int sliderValue = 100;
int slider0 = 10;
int slider1 = 10;
int slider2 = 30;
int slider3 = 50;


boolean bFilter=false;
boolean bCell=true;
boolean bCellUpd=false;

PFont pfont;



float X=333;
float Y=333;
float dir=0;

int X1=333;
int Y1=444;
int dir1=0;


int X2=655;
int Y2=655;
int dir2=0;

int t=1000;
int rM=155;
int gM=155;
int rMadd=20;
int gMadd=3;
int bMadd=0;
int rm=154;
int rmadd=-10;
int gmadd=-1;
int bmadd=2;


int t1=1000;
int rM1=145;
int gM1=145;
int rMadd1=20;
int gMadd1=3;
int bMadd1=0;
int rm1=154;
int rmadd1=-10;
int gmadd1=1;
int bmadd1=-2;


int t2=1000;
int rM2=245;
int rMadd2=20;
int gMadd2=6;
int bMadd2=6;
int rm2=154;
int rmadd2=-10;
int gmadd2=-3;
int bmadd2=-2;

void setup() {
   size(1024,1024);
   background(0);
   
  noStroke();

  cp5 = new ControlP5(this);

int pos=220;
cp5.addSlider("t")
.setRange(0,1000)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rM")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
cp5.addSlider("gM")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rMadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gMadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bMadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("rm")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rmadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gmadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bmadd")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
pos+=8;




cp5.addSlider("t1")
.setRange(0,1000)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rM1")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
cp5.addSlider("gM1")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rMadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gMadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bMadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("rm1")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rmadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gmadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bmadd1")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
pos+=8;



cp5.addSlider("t2")
.setRange(0,1000)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rM2")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rMadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gMadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bMadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("rm2")
.setRange(0,255)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("rmadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
     
cp5.addSlider("gmadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;

cp5.addSlider("bmadd2")
.setRange(-25,25)
.setPosition(100,pos)
.setSize(100,6);
pos+=8;
	 

  cp5.addToggle("bFilter")
     .setPosition(10,pos)
     .setSize(80,12)
     .setMode(Toggle.SWITCH)
     ;
pos+=8;
pos+=8;

  cp5.addToggle("bCell")
     .setPosition(10,pos)
     .setSize(80,12)
     .setMode(Toggle.SWITCH)
     ;
pos+=8; 
pos+=8; 
 cp5.addToggle("bCellUpd")
     .setPosition(10,pos)
     .setSize(80,12)
     .setMode(Toggle.SWITCH)
     ;
pos+=8;

pos+=8;

/*
for(int i=0;i<5;i++)
{
  cp5.addSlider("slider"+i)
     .setRange(100,200)
     .setValue(128)
     .setPosition(100,pos)
     .setSize(100,8);
  pos+=8;
}
   */
   
   
   
    pfont = createFont("Arial",65,true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont,241);

  /*
loadPixels();
for (int i = 0; i < (width*height/2)-width/2; i++) {
  pixels[i]=i;
}
updatePixels();
*/



flore.loadPixels();
for (int i = 0; i < flore.pixels.length; i++) {
	flore.pixels[i] = color(0, 0, 255, 255);
}
flore.updatePixels();



}

  
  int BG = color(255);
  color pink = color(255, 102, 204);



int il;
int xt,yt;
int printT;
void draw() {
il++;

flore.loadPixels();
for (int i = 0; i < flore.pixels.length; i++) {
int c=flore.pixels[i];
int floreMHiH = c>>24 & 0xff; //24 //A
int floreMLow = c>>16 & 0xff; //16 //R
int floreMHi = c>>8 & 0xff; //8 //G
int floreMLowH = c & 0xff; //B
if(printT%10000==0) println (floreMLow+" "+floreMHi+" "+floreMLowH+" "+floreMHiH);
printT++;

if(floreMLow==0) //new
{
 if(random(255)>200) floreMLow=1;
	//if((i+il)%100==0) floreMLow=1;
  //if(getSum_floreMHi(i)>
}
else
if(floreMLow<255) //new & grow
	floreMLow++; 
else
{
	if(floreMLowH>5) floreMLowH--;
}



if(floreMHi==0) //new
{
	if(random(255)>230) floreMHi=1;
	//if((i+il)%100==0) floreMHi=1;
  //if(getSum_floreMHi(i)>
}
else
if(floreMHi<255) //grow
{
  if(random(255)>130) floreMHi++;
  
   
}

if(floreMHi>128 && floreMHiH>10) floreMHiH--;







  //flore.pixels[i] = color(floreMLowH, floreMHiH, floreMLow, floreMHi); 
  flore.pixels[i] = color( floreMLow, floreMHi, floreMLowH,floreMHiH); //floreMHiH
}
flore.updatePixels();
image(flore, 0, 0);



      // il++;
      // textFont(pfont);
      // fill(0,120, 20);
      
      
      // if(il%50==0)
      // {
        
        // text("1234567", 260, 150);  //ßקסלטעü
      // }else
      // if(il%5==0)
      // {
        
        // text("Qwer", 50, 120);
      // }
      // else
      // {
        
        // text("Qw", 50, 120);
      // }
      
   // fill(BG);
      

/*

for(int j=0;j<5;j++)
{


//if(bCellUpd) loadPixels();
//if(bCell)

for (int x=0;x<width;x++)
{
 for (int y=0;y<height;y++)
 {
 
 
color c =get(x, y);
 
int r = c>>16 & 0xff; //16
int g = c>>8 & 0xff; //8
int b = c & 0xff;

float value = hue(c);

//set(x, y, color(r+1, g+1,b+1));

float RR=red(get(x, y))+red(get(x-1, y))+red(get(x+1, y))+red(get(x, y-1))+red(get(x, y+1));
 if( RR>200)
 {
   set(x, y, color(100, 222,111));
 }
 else
 if( RR<200)
 {
  set(x, y, color(0, 0,0));
}


  // println(r+" "+g);
  // delay(10);
 }
}




//if(bCellUpd) updatePixels();



}

*/

/*
				if(bFilter)
				{
					filter(ERODE);
					//filter(BLUR);
				}
				*/
}



/*
color getP(int x, int y)
{
  if(x>=width) x=x-width;
  else if(x<0) x=x+width;
  
  if(y>=height) y=y-height;
  else if(y<0) y=y+height;
  
  //print(x);print(" ");println(y);
  return pixels[y*width+x];
  
}

void setP(int x, int y, color c)
{
//if(x>width)
 set(x, y, c);
}
  */
  

  
  
void slider(int theColor) {
  myColorBackground = color(theColor);
  println("a slider event. setting background to "+theColor);
  cp5.getController("sliderValue").setValue(theColor);
   cp5.getController("slider2").setValue(1);
   cp5.getController("slider0").setValue(66);
}

void slider1(int theColor) {
  println("slider1");
  println(cp5.getController("sliderValue").getValue());

}

boolean bdrag;
boolean bdraw;
void keyPressed() {
 if (key == 'm') bdrag=!bdrag;
 else if (key == 'f')
 {
  background(123456);
 }
 else if (key == 'd')
 {
  bdraw=!bdraw;
 }
 else 
 {
  //cp5.getController("sliderValue").setValue(150);
  background(0);
  }
}

void mouseClicked() {
  X1= mouseX;
  Y1= mouseY;
}

void mouseDragged() 
{
if(bdraw)  set(mouseX,mouseY, color(0,128,255));
 if(! bdrag) return;
  X2= mouseX;
  Y2= mouseY;
}
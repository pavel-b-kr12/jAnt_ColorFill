import controlP5.*;

ControlP5 cp5;
int myColorBackground = color(0,0,0);
int sliderValue = 100;
int slider0 = 10;
int slider1 = 10;
int slider2 = 30;
int slider3 = 50;


boolean bToggle;

PFont pfont;



int X=333;
int Y=333;
int dir=0;

int X1=333;
int Y1=444;
int dir1=0;


int X2=655;
int Y2=655;
int dir2=0;

int t=10000;
int rM=155;
int gM=155;
int rMadd=20;
int gMadd=3;
int bMadd=0;
int rm=154;
int rmadd=-10;
int gmadd=-1;
int bmadd=2;


int t1=10000;
int rM1=145;
int gM1=145;
int rMadd1=20;
int gMadd1=3;
int bMadd1=0;
int rm1=154;
int rmadd1=-10;
int gmadd1=1;
int bmadd1=-2;


int t2=10000;
int rM2=245;
int rMadd2=20;
int gMadd2=6;
int bMadd2=6;
int rm2=154;
int rmadd2=-10;
int gmadd2=-3;
int bmadd2=-2;

void setup() {
   size(1000,900);
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
	 
/* 
  cp5.addToggle("bToggle")
     .setPosition(10,pos)
     .setSize(80,20)
     .setMode(Toggle.SWITCH)
     ;
pos+=8;

pos+=8;
*/
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
   
   
   
    pfont = createFont("Arial",55,true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont,241);

  
   // loadPixels();
// for (int i = 0; i < (width*height/2)-width/2; i++) {
  // pixels[i]=i;
// }
// updatePixels();
}

  
  int BG = color(255);
  color pink = color(255, 102, 204);



int il;
void draw() {
il++;
      // il++;
      // textFont(pfont);
      // fill(255,248, 192);
      
      
      // if(il%100==0)
      // {
        
        // text("Qwerty", 50, 50);
      // }else
      // if(il%20==0)
      // {
        
        // text("Qw", 50, 50);
      // }
      // else
      // {
        
        // text("Q", 50, 50);
      // }
      
    //fill(BG);
      
     
//loadPixels();



for(int j=0;j<1000;j++)
{

for(int i=0;i<t;i++)
{								
color c =get(X, Y);
int r = c>>16 & 0xff; //16
int g = c>>8 & 0xff; //8
int b = c & 0xff;

if(r<rM)  //-((il/4)%8) && g<gM
{
	set(X, Y, color(r+rMadd, g+gMadd,bMadd)); dir++;
}
else //if(r>rm)  
{
	set(X, Y, color(r+rmadd, g+gmadd,b+bmadd)); dir--;
}
				// else
				// {
					// set(X, Y, color(r+1, g+1,b-1));
				// }

if(dir<0) dir=7;
else if(dir==8) dir=0;
	switch(dir)
	{
	 case 0: X++; break;
	 case 1: X++;Y++; break;
	 case 2: Y++; break;
	 case 3: Y++;X--; break;
	 case 4: X--; break;
	 case 5: X--;Y--; break;
	 case 6: Y--; break;
	 case 7: Y--;X++; break;
	}
}

//=============================================
for(int i=0;i<t1;i++)
{								
color c =get(X1, Y1);
int r = c>>16 & 0xff; //16
int g = c>>8 & 0xff; //8
int b = c & 0xff;

if(r<rM1)  //-((il/2)%16)   && g<gM1
{
	set(X1, Y1, color(r+rMadd1, g+gMadd1,bMadd1)); dir1++;
}
else //if(r>rm1)  
{
	set(X1, Y1, color(r+rmadd1, g+gmadd1,b+bmadd1)); dir1--;
}


if(dir1<0) dir1=7;
else if(dir1==8) dir1=0;
	switch(dir1)
	{
	 case 0: X1++; break;
	 case 1: X1++;Y1++; break;
	 case 2: Y1++; break;
	 case 3: Y1++;X1--; break;
	 case 4: X1--; break;
	 case 5: X1--;Y1--; break;
	 case 6: Y1--; break;
	 case 7: Y1--;X1++; break;
	}
}

//=============================================

for(int i=0;i<t1;i++)
{		
						
color c =get(X2, Y2);
int r = c>>16 & 0xff; //16
int g = c>>8 & 0xff; //8
int b = c & 0xff;

if(r<rM2)  //255-(il/2)%128
{
	set(X2, Y2, color(r+rMadd2, g+gMadd2,bMadd2)); dir2++;
}
else  //if(r>rm2)  //-(il)%128
{
	set(X2, Y2, color(r+rmadd2, g+gmadd2,b+bmadd2)); dir2--;
}


if(dir2<0) dir2=7;
else if(dir2==8) dir2=0;
	switch(dir2)
	{
	 case 0: X2++; break;
	 case 1: X2++;Y2++; break;
	 case 2: Y2++; break;
	 case 3: Y2++;X2--; break;
	 case 4: X2--; break;
	 case 5: X2--;Y2--; break;
	 case 6: Y2--; break;
	 case 7: Y2--;X2++; break;
	}
}





}

// for (int x=0;x<width;x++)
// {

 // for (int y=0;y<height;y++)
 // {
// /*
// int r = ((col >> 16) & 0xFF);
// int g = ((col >> 8) & 0xFF);
// int b = (col & 0xFF);  
// */
// color c =getP(x, y);
 
// int r = c>>16 & 0xff; //16
// int g = c>>8 & 0xff; //8
// int b = c & 0xff;

// float value = hue(c);

 // if(red(getP(x-1, y))+red(getP(x+1, y))+red(getP(x, y-1))+red(getP(x, y+1)) >255)
 // {
   // set(x, y, color(r, g+1,b));
 // }

 // }
// }


//updatePixels();

				if(!bToggle){}
}

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


void keyPressed() {
  //cp5.getController("sliderValue").setValue(150);
  background(0);
}
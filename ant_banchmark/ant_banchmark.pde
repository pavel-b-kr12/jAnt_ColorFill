int fieldSize=1024;
int[][] field = new int[fieldSize][fieldSize];
int[][] arrHistVisits = new int[fieldSize][fieldSize];
int[][] arrHist = new int[fieldSize][fieldSize];
Ant a=new Ant(fieldSize-1,fieldSize-1,fieldSize/2,fieldSize/2,0);

void setup() {
  size(1200, 1080);
  noStroke();
  //colorMode(HSB, 360);
}
int il=0;
void draw() {
  background(128);
  
  int t0=millis();
  for(int i=0;i<10000000;i++) //10M=85ms, 121ms with hist
  {
	field[a.x][a.y]=a.run(field[a.x][a.y]);
	arrHistVisits[a.x][a.y]++;   //print(arrHistVisits[a.x][a.y]);print("  ");
	arrHist[a.x][a.y]=a.step_i;  //println(arrHist[a.x][a.y]);
  }
	
  int tA=millis();
  /* //slower 
  for(int x=0;x<fieldSize;x++)
	for(int y=0;y<fieldSize;y++)
	{
	  //set(x,y,color(field[x][y],360,360)); //40ms with colorMode(HSB, 360);
	  switch(display_mode)
	  {
		default:
		case 0: set(x,y,color(field[x][y])); break; //30ms
		case 1: if(arrHist[x][y]!=0) set(x,y,color((arrHist[x][y]*0.02+il)%360, 360,360));break; //40ms, 50ms with prpper ranges
		case 2: if(arrHistVisits[x][y]!=0) set(x,y,color(arrHistVisits[x][y]*4%360, 360,360));break;//40, 50ms
	  }
	  
	}
	*/
	loadPixels(); //faster
  for(int x=0;x<width;x++)
	for(int y=0;y<height;y++)
	{
	  if(x>=fieldSize || y>=fieldSize) continue;
	  switch(display_mode)
	  {
		default:
		case 0: pixels[x*width+y] =color(field[x][y]); break; //18ms
		case 1: if(arrHist[x][y]!=0) pixels[x*width+y] =color((arrHist[x][y]*0.02+il)%360, 360,360);break; // , 36ms
		case 2: if(arrHistVisits[x][y]!=0) pixels[x*width+y] =color(arrHistVisits[x][y]*4%360, 360,360);break;// , 36ms
	  }
}

//TODO test with direct use textures instead of int[][]

updatePixels();

// ------------------------------ UI
  fill(0);
  //rect(14,14,44,44,color(0));
  text(Integer.toString(tA-t0),1024+22,22); text("walk",1024+44,22);
  //fill(255);
  text(Integer.toString(millis()-tA),1024+22,44); text("draw",1024+44,44);


  switch(display_mode)
	  {
		case 0: text("field",1024+22,66); colorMode(RGB, 255);break;
		case 1: text("history last visit",1024+22,66); colorMode(HSB, 360);break;
		case 2: text("visits count",1024+22,66); colorMode(HSB, 360); break;
	  }
  il+=8;
}

int display_mode=0;


void keyPressed(){
  if( key == 'h' || key == 'H') display_mode=1;
  else
  if( key == 'v') display_mode=2;
  else  display_mode=0;
}
//2020.8.24 pavel.b.kr12
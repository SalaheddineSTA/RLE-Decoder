PImage img;
int mat[][];
int matdecode[][];

int noire=0,blanc=0;
int tab[][];
int colorr;

BufferedReader input;
boolean first=false,b=true,bb=true;

String code="",code1="";
int hexa=0,cpt;
int h,w;
String line[];
void setup()
{
  
  
 size(900,313);
 
  
  colorr=0;
  
  input= createReader("code.txt");
  line=loadStrings(input);
  w=int(line[1]);
  h=int(line[0]);
  print(w,h);
  matdecode= new int[w][h];
  tab= new int[w*h][2];
  code=line[2];
    }
void draw()
{
  if(bb){
   decodage(code);
   for (int i=0; i<h; i++) {
    for (int j=0; j<w; j++) {
        if(matdecode[j][i]==0){stroke(0);point(j,i);}
        else{stroke(255);point(j,i);}
    }}
 }
}
  
  
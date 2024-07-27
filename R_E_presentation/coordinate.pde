float[] A = new float[6]; float ceta=50,pi=20; float[] fac=new float [15];
void makecoordinate(){
  fill(255);stroke(255);rect(locatex-rangecover,locatey-rangecover,2*rangecover,2*rangecover);fill(0);fill(0);
  strokeWeight(5);fill(0);
  if (coordinateTRUE==1) {
    line3D(-1*coordinaterange, 0, 0, coordinaterange, 0, 0, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    line3D(0, -1*coordinaterange, 0, 0, coordinaterange, 0, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    line3D(0, 0, -1*coordinaterange, 0, 0, coordinaterange, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    textSize(20);stroke(255);fill(255*coordinateBW);
    check3D(coordinaterange+10, 0, 0, size);       text("+x", locatex+A[0], locatey+A[1]);
    check3D(-1*(coordinaterange+10), 0, 0, size);  text("-x", locatex+A[0], locatey+A[1]);
    check3D(0, coordinaterange+10, 0, size);       text("+y", locatex+A[0], locatey+A[1]);
    check3D(0, -1*(coordinaterange+10), 0, size);  text("-y", locatex+A[0], locatey+A[1]);
    check3D(0, 0, coordinaterange+10, size);       text("+z", locatex+A[0], locatey+A[1]);
    check3D(0, 0, -1*(coordinaterange+10), size);  text("-z", locatex+A[0], locatey+A[1]);
    fill(0);stroke(0);
}}

void checkk(){
     k1=500;
     k2=200;
     k3=500;
     k4=100000;
     k5=100000;
     k6=100000;
     k7=100000;
     k8=100000;
     k9=100000;
     k10=100000;
     k11=100000;
     k12=100000;
     k13=100000;
     k14=100000;
     k15=100000;
     k16=100000;
     k17=100000;
     k18=100000;
     k19=100000;
     k20=100000;
     k21=100000;
     k22=100000;
     k23=100000;
     k24=100000;
     k25=100000;
}

void setangle2(){ceta+=0.5;pi+=0.5;}

void setangle5_1(){ceta+=0.5*time;pi+=0.5*time;}

void setangle5_2(){ceta-=0.5*time;pi-=0.5*time;}

void setangle12_1(){pi+=0.5; ceta+=0.5;}

void setangle15_1(){pi=20; ceta+=0.5;}

void setangle16_1(){pi=20; ceta+=0.5;}

void setangle17_1(){pi=20; ceta+=0.5;}

void setupcheck() {combination(20, 10);f(10);combination2();}

PImage img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13,img14,img15,img16,img17,img18,img19,img20;
void loadimage()
{
  smooth();
  img1=loadImage("data\\slide4-1.png");
  img2=loadImage("data\\slide6-1.png");
  img3=loadImage("data\\slide7-1.png");
  img4=loadImage("data\\slide8-1.png");
  img5=loadImage("data\\slide9-1.png");
  img6=loadImage("data\\slide10-1.png");
  img7=loadImage("data\\slide10-2.png");
  img8=loadImage("data\\slide11-1.png");
  img9=loadImage("data\\slide13-1.png");
  img10=loadImage("data\\slide13-2.png");
  img11=loadImage("data\\slide14-1.png");
  img12=loadImage("data\\slide18-1.png");
  img13=loadImage("data\\slide19-1.png");
  img14=loadImage("data\\slide20-1.png");
  img15=loadImage("data\\slide21-1.png");
  img16=loadImage("data\\slide22-1.png");
  img17=loadImage("data\\slide23-1.png");
  img18=loadImage("data\\9-extra.png");
  img19=loadImage("data\\22-extra1.png");
}
    
int f(int k) {if (k==1){fac[1]=1;return 1;}else{int s;s=k*f(k-1);fac[k]=s;return s;}}

int combination(int a, int b) {if ((a==b)||(b==0)){com[0][0]=1;com[a][b]=1;return 1;}else {int s;s=combination(a-1, b-1)+combination(a-1, b);com[a][b]=s;return s;}}

float power(float x, int n) {if (n==0) {return 1;}else {int i;float sum=1;for (i=0; i<n; i++){sum*=x;}return sum;}}

void combination2(){
  for(int i=0; i<=3; i++){for(int j=0; j<=3; j++){if (i+j<=3){com2[i][j][3-i-j]= com[i+j][i]*com[3][i+j];/*println(i,j,com2[i][j][3-i-j]);*/}}}
  for (int i=0; i<=2; i++){for (int j=0; j<=2; j++){if (i+j<=2){com2[i][j][2-i-j]= com[i+j][i]*com[2][i+j];/*println(i,j,com2[i][j][2-i-j]);*/}}}}

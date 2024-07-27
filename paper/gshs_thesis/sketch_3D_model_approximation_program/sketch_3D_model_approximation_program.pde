int count=0, count2=0,oneloop1=0,oneloop2=0,oneloop3=0,oneloop4=0,oneloop5=0,oneloop6=0,oneloop7=0,row=0,rowf=0,rown=0,Siz=1,ax=0,ay=0,az=64; //sphere Siz=1,ax=0,ay=0,az=64; //heart Siz=5,ax=0,ay=0,az=0
int RMaterial=128, GMaterial=128, BMaterial=128,colorexits=-1,windowup=0,consolcheck=0,coordinateTRUE=1,Xcodelength=1,searchlength=0,itis=2,consoletempt=0;
int win5outlength=1,win4length=0,N=10000,ex=0,fend=0,showend=0;
int[][][] index=new int[100000][6][4];
float[] A = new float[6];
float[] fac=new float [15];
float[] Tf=new float [5];
float[] Ka=new float [5];
float[] Kd=new float [5];
float[] Ks=new float [5];
float[] Ke=new float [5];
float[]ray = new float[6];
float[]Acir = new float[6];
float[]r3D = new float [6];
float[]u = new float[1000000];
float[]v = new float[1000000]; 
float[]vsh = new float [10000000];
float[][] com=new float [21][21];
float[][] obj=new float[100000][3];
float[][] vervec=new float[100000][3];
float[][]rayshow = new float [10][3];
float[][]f=new float [10000000][9];
float[][][] com2=new float[10][10][10];
float[][][] S=new float[10][10][3];
float[][][] SRGB=new float[10][10][3];
float[][][][] T=new float[5][5][5][3];
float[][][]show =new float [10][1000000][3];
float ceta, pi, size=1;
float pi_barx=50, pi_bary=83, ceta_barx=50, ceta_bary=145, size_barx=50, size_bary=200,RMatrialx=50, RMatrialy=375, GMatrialx=100, GMatrialy=375, BMatrialx=150, BMatrialy=375;
float lightxx=275, lightxy=325, lightyx=275, lightyy=325, lightzx=375, lightzy=325,lightcolorRx=50, lightcolorRy=600, lightcolorGx=50, lightcolorGy=650, lightcolorBx=50, lightcolorBy=700;
float lightpowerx=50, lightpowery=750,lightpower=0, coordinateBW=1,lightx=128, lighty=128, lightz=128,lightcolorR=255,lightcolorG=255,lightcolorB=255,error=256;
float Ns,Ni,d,Tr,illum;
float zmn=200,zmx=-200,ep=0.5;
String str="", ans=""; //str== search function string ans== found result return
String[]data= new String [10000000];String[]data2= new String [1000000];//data,count==bzffile data2,count2==vertexfile
String[] win4= new String [10000];String[] win5= new String [10000];String[] win5out= new String [10000]; 
PImage img1,img2,img3,img4,img5,img6,img7,img8,img9,img10;
vector [] p =new vector[1000000]; vector [][] b =new vector[3][3];
ArrayStack Ast = new ArrayStack(1000000);
ArrayStack Bst = new ArrayStack(1000000);
ArrayStack Bstrange = new ArrayStack(1000000);
void setup() {size(1500, 800);background(0);imagein();
  parseFile();//obj
  /*parseFile2();*/ //mtl
}
void draw() {if (oneloop1==0){setupcheck();oneloop1=1;}windowcheck();}
void windowcheck(){
  if (windowup==0){Bst.clear();image(img1, 0, 0, 1500, 800);
  image(img7,50,225,100,100);textSize(20);fill(0);text("preview", 65, 350);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=225)&&(mouseY<=325)) {windowup=1;}
  image(img2,50,50,100,100);textSize(20);fill(0);text("retrieve", 65, 175);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=50)&&(mouseY<=150))  {windowup=2;}
  image(img3,50,400,100,100);textSize(20);fill(0);text("save", 80, 525);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=400)&&(mouseY<=500)) {windowup=3;}
  image(img8,200,50,100,100);textSize(20);fill(0);text("compression", 190, 175);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=50)&&(mouseY<=150)) {windowup=4;}
  image(img5,200,225,100,100);textSize(20);fill(0);text("Xcode", 220, 350);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=225)&&(mouseY<=325)){windowup=5;}
  image(img4,50,575,100,100);textSize(20);fill(0);text("option", 70, 700);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=575)&&(mouseY<=675)) {windowup=6;}
  image(img6,200,400,100,100);textSize(20);fill(0);text("function", 210, 525);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=400)&&(mouseY<=500)){windowup=7;}
  }
  
  if (windowup==1){//preview
    image(img9,1425,725,50,50);strokeWeight(5);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}//Home Button
    if (mouseButton==LEFT) {setangle();makecoordinate();}make_bar();rebar();
    stroke(#FF05FC);fill(#FF05FC); rect(250, 20, 90, 20);fill(0);stroke(0);textSize(20);text("retrieve", 259, 38);strokeWeight(5);
    if ((mouseX>=250)&&(mouseX<=340)&&(mouseY>=20)&&(mouseY<=40)&&(mouseButton==LEFT)) {Bst.clear();consolcheck=2;}if(key==TAB){consolcheck=0;}
    if (consolcheck==0) {Bst.clear();
    if(key=='0'){ex=0;}if(key=='1'){ex=1;}if(key=='2'){ex=2;}if(key=='3'){ex=3;}if(key=='4'){ex=4;}if(key=='5'){ex=5;}if(key=='6'){ex=6;}if(key=='7'){ex=7;}if(key=='8'){ex=8;}if(key=='9'){ex=9;}
    if(ex==0){cylinder(0,0,-200,200,200);objshow();oneloop5=1;/*point3D_RGB(lightx, lighty, lightz, lightcolorR, lightcolorG, lightcolorB, 10, size);*/}
    if(ex==1){ex1subfunction();showexample();stroke(255);fill(255);stroke(0);fill(0);}
    if(ex==2){cylinder(0,0,-200,200,200);cylinder_ray(0,0,-200,200,200,100,100);triangle_3D(-200,0,0,0,200,0,0,0,150);ray_triangle(0,0,-256,256,200,100,100,-200,0,0,0,200,0,0,0,150);}
    if(ex==3){triangle_3D(-200,0,0,0,200,0,0,0,150);tri_gappoint(-200,0,0,0,200,0,0,0,150,0.1);}
    if(ex==4){show();}
    if(ex==7){}if(ex==8){}if(ex==9){}}
    if (consolcheck==1) {if(oneloop2==0){consoledraw2();}oneloop2=1;consoledraw();cylinder(0,0,-200,200,200);}
    if (consolcheck==2) {parseFile3();}
  }
  
  if (windowup==2){background(255);fill(0);//retrieve
  rect(0,0,100,800);image(img2,0,0,100,100);
  textSize(20);fill(0);
  text("*obj,*.mtl is allowed", 150, 50);
  text("1. Copy paste your file into data\\textfile", 150, 100);
  text("2. check if it is allowed with Notepad", 150, 150);
  text("3. change your file name into objtestfile.obj,mtltestfile.mtl or something else", 150, 200);
  text("4. if it is something else, check obj-retrieve file name and insert the name", 150, 250);
  text("5. go to preview and check it is your model", 150, 300);
  text("# In your obj file find f and check it is rectangle", 150, 400);
  image(img9,1425,725,50,50);
  if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==3) {background(255);fill(0);//save
  rect(0,0,100,800);image(img3,0,0,100,100);  
  textSize(30);text("save files",150,50);
  fill(#00FCD0);stroke(#00FCD0);rect(150,200,600,300);fill(0);stroke(0);
  fill(#F8FC00);stroke(#F8FC00);rect(800,200,600,300);fill(0);stroke(0);
  textSize(50);text("save Xcode text",250,350);
  textSize(40);text("save compressed obj file",850,350);
  if ((mouseX>=150)&&(mouseX<=750)&&(mouseY>=200)&&(mouseY<=500)&&(mouseButton==LEFT)) {if(oneloop6==0){println();println("Xcode text saved");oneloop6=1;}
    win5[0]="#xcodefile #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
    saveStrings("data\\textfile\\codeout.txt", win5);}else{oneloop6=0;}
  if ((mouseX>=800)&&(mouseX<=1400)&&(mouseY>=200)&&(mouseY<=500)&&(mouseButton==LEFT)) {if(oneloop7==0){println();println("compressed obj file saved");oneloop7=1;}
    win5out[0]="#xcodefile #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
    saveStrings("data\\textfile\\compressed_obj_file.txt", win5out);}else{oneloop7=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==4) {background(255);fill(0);//compression
  rect(0,0,100,800);image(img8,0,0,100,100);
  strokeWeight(1);fill(#FA08E2);stroke(#FA08E2);rect(150, 20, 150, 40); fill(0);stroke(0); 
  textSize(25);text("compress", 170, 48);strokeWeight(5);
  fill(255);strokeWeight(5);rect(150,140,600,610);showstring3();
  if ((mouseX>=150)&&(mouseX<=300)&&(mouseY>=20)&&(mouseY<=60)){if(mouseButton==LEFT){if(oneloop3==0){go();}oneloop3=1;}}else{oneloop3=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==5) {background(255);fill(0);//Xcode
  rect(0,0,100,800);image(img5,0,0,100,100);
  fill(255);strokeWeight(5);rect(150,50,1300,600);
  showstring2(160, 75);
  fill(#FA08E2);stroke(#FA08E2);rect(250, 20, 90, 20);fill(0);stroke(0); 
  textSize(20);text("console", 260, 38);
  stroke(#0091FC);fill(#0091FC);rect(650, 20, 90, 20);fill(0);stroke(0);
  textSize(20);text("retrieve", 659, 38);strokeWeight(5);
  if ((mouseX>=650)&&(mouseX<=740)&&(mouseY>=20)&&(mouseY<=40)&&(mouseButton==LEFT)){
    BufferedReader codein = createReader("data\\textfile\\codein.txt");
    for (int i=0; i<10000; i++){win5[i]="";}
    String line = null;int linecnt=0;
    try {while ((line = codein.readLine()) != null) {/*println(line);*/
        if (linecnt!=0) {win5[linecnt]=line;}linecnt++;}
      codein.close();} 
    catch (IOException e){e.printStackTrace();}}
    if ((mouseX>=250)&&(mouseX<=340)&&(mouseY>=20)&&(mouseY<=40)) {if(mouseButton==LEFT){if (oneloop4==0){oneloop2=0;Bst.clear();console();}oneloop4=1;}} else {oneloop4=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==6) {background(255);//option
  textSize(20);fill(0);text("coordinate3D",150,200);  
  madeswitch1(300,183,255,0,0,0,255,0,80,20);
  textSize(20);fill(0);text("coordinateW/B",150,250); 
  madeswitch2(300,233,255,0,0,0,255,0,80,20);
  fill(120);rect(0,0,100,800);
  image(img4,0,0,100,100);
  textSize(30);fill(0);text("Option", 150, 50);
  textSize(20);fill(0);text("specular Reflectivity does not apply in preview.", 150, 700);
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==7) {background(255);fill(0);//function
  rect(0,0,100,800);strokeWeight(1);
  image(img6,0,0,100,100);image(img10,250,10,1000,80);
  fill(255);strokeWeight(5);rect(260,200,1150,500);
  showstring(270,60);
  textSize(20);text("Delete? -> clear  enter? -> search", 270, 110);
  textSize(20);fill(255,0,0);text("NO SHIFT, NO CAPITAL!!",610,110);fill(0);
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
}
public class vector {
    private float[] vec=new float [3];
    private float x;
    private float y;
    private float z;
    public vector() {this.x = 0;this.y = 0;this.z=0;this.vec[0]=0;this.vec[1]=0;this.vec[2]=0;}
    public vector(float x1,float y1,float z1) {this.x = x1;this.y = y1;this.z=z1;this.vec[0]=x;this.vec[1]=y;this.vec[2]=z;}
    public float norm(vector v) {return sqrt(v.x*v.x+v.y*v.y+v.z*v.z); }
    public void displayvector() {System.out.println(this);}
    public vector BS(float u, float v){
    vector BS= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BS=plus(BS,mul(b[i][j],B(i, u)*B(j, v)));return BS;}
    public vector BSu(float u, float v){
    vector BSu= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSu=plus(BSu,mul(b[i][j],Bt(i, u)*B(j, v)));return BSu;}
    public vector BSv(float u, float v){
    vector BSv= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSv=plus(BSv,mul(b[i][j],B(i, u)*Bt(j, v)));return BSv;}
    public vector zerovec() {
        vector temp = new vector(0,0,0);
        return temp;}
    public float vectori(int i){return this.vec[i];}
    public vector(float[] temp) { this.vec[0] = temp[0];this.vec[1] = temp[1];this.vec[2] = temp[2];}
    public vector plus(vector A,vector B) {float[] temp = this.zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] =  A.vectori(i) + B.vec[i];}return new vector(temp);}
    public vector minus(vector A,vector B) {float[] temp = zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] = -A.vectori(i) + B.vec[i];}return new vector(temp);}
    public vector mul(vector A,float c) {float[] temp = zerovec().getvector();
        for (int i = 0; i < 3; i++) {temp[i] = A.vectori(i)*c;}return new vector(temp);}
    public float[] getvector() {return this.vec;}}
public boolean vectorequal(vector A, vector B) {if (A.x == B.x && A.y == B.y && A.z == B.z) {return true;}else {return false;}}
public vector  plus(vector A, vector B) {
        float[] temp = new float[3];float[] tempA = A.getvector();float[] tempB = B.getvector();
        for (int i = 0; i < 3; i++){temp[i] = tempA[i] + tempB[i];}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}
public vector  minus(vector A, vector B) {
        float[] temp = new float[3];float[] tempA = A.getvector();float[] tempB = B.getvector();
        for (int i = 0; i < 3; i++){temp[i] = tempA[i] - tempB[i];}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}
public vector  mul(vector A, float c) {
        float[] temp = new float[3];float[] tempA = new float[3];
        tempA[0]=A.getvector()[0];
        tempA[1]=A.getvector()[1];
        tempA[2]=A.getvector()[2];
        for (int i = 0; i < 3; i++){temp[i] = tempA[i]*c;}
        vector ans = new vector(temp[0],temp[1],temp[2]);
        return ans;}  
public vector BS(float u, float v){
    vector BS= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BS=plus(BS,mul(b[i][j],B(i, u)*B(j, v)));return BS;}
public vector BSu(float u, float v){
    vector BSu= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSu=plus(BSu,mul(b[i][j],Bt(i, u)*B(j, v)));return BSu;}
public vector BSv(float u, float v){
    vector BSv= new vector();
    for(int i=0; i<3; i++) for(int j=0; j<3; j++) BSv=plus(BSv,mul(b[i][j],B(i, u)*Bt(j, v)));return BSv;}
public float norm(vector v) { return sqrt(v.x*v.x+v.y*v.y+v.z*v.z); }
float B(int i, float t){if(i==0) {return (float)(1-t)*(1-t);}else if(i==1) {return 2*t*(1-t);}else {return t*t;}}
float Bt(int i,float t){if(i==0) {return 2*(t-1);}else if(i==1) {return 2*(1-2*t);}else {return 2*t;}}
public class ArrayStack {
  private int top;
  private int stackSize;
  private float stackArr[][];
  public ArrayStack(int stackSize) {
    top = -1;  
    this.stackSize = stackSize; 
    stackArr = new float[this.stackSize][3];}
  public boolean isEmpty() {return (top == -1);}
  public boolean isFull()  {return (top == this.stackSize-1);}
  public int arraysize() {return top;}
  public float ix(int k) {return stackArr[k][0];}
  public float iy(int k) {return stackArr[k][1];}
  public float iz(int k) {return stackArr[k][2];}
  public void push(float x, float y, float z) {
    if (isFull()) {/*println("full");*/} 
    else {++top;stackArr[top][0] = x;stackArr[top][1] = y;stackArr[top][2] = z;}}
  public void pop() {
    if (isEmpty()) {/*println("Deleting fail! Stack is empty!");*/} 
    else {/*println("Deleted Item : " + stackArr[top][0]+ " "+stackArr[top][1]+" "+stackArr[top][2]);*/top--;}}
  public void clear() {
    if (isEmpty()) {/*println("Stack is already empty!");*/} 
    else {top = -1;stackArr = new float[this.stackSize][3];/*println("Stack is clear!");*/}}
  public void printStack() {
    if (isEmpty()) {/*println("Stack is empty!");*/} 
    else {print("Bst elements : ");
      for (int i=0; i<=top; i++) {/*println(stackArr[i][0]+ " "+stackArr[i][1]+" "+stackArr[i][2]+ " ");*/point3D_RGB(stackArr[i][0],stackArr[i][1],stackArr[i][2],255,0,0,2,size);}
      println();}}
}
float alpha=3;
void go(){
  win4clear();
  long s=System.currentTimeMillis(); 
  println("alpha:",alpha);                             win4push("alpha:"+Float.toString(alpha));   
  println("start approximation");     println("0%");       win4push("0%");                               
  com(zmn+5,0,0,90);              println("12.5%");    win4push("12.5%");                          
  com(zmn+5,0,90,180);            println("25%");      win4push("25%");                              
  com(zmn+5,0,180,270);           println("37.5%");    win4push("37.5%");                           
  com(zmn+5,0,270,360);           println("50%");      win4push("50%");                          
  com(0,zmx-5,0,90);              println("62.5%");    win4push("62.5%");                         
  com(0,zmx-5,90,180);            println("75%");      win4push("75%");                        
  com(0,zmx-5,180,270);           println("89.5%");    win4push("89.5%");                        
  com(0,zmx-5,270,360);           println("100%");     win4push("100%");                          
  long e=System.currentTimeMillis();
  print("finished",e-s,"ms");                          win4push("finished"+Long.toString(e-s)+"ms");
}

void com(float zmin,float zmax,float anglemin,float anglemax){
  if(anglemax<0)anglemax+=360;if(anglemin<0)anglemin+=360;
   b[0][0]=new vector(); b[2][0]=new vector(); b[0][2]=new vector();
   b[2][2]=new vector(); b[1][0]=new vector(); b[0][1]=new vector();
   b[2][1]=new vector(); b[1][2]=new vector(); b[1][1]=new vector();
  Bstrange.clear();rangein(zmin,zmax,anglemin,anglemax);if(Bstrange.arraysize()<0){return;}
  float dismax1=0.1,dismax2=0.1,dismax3=0.1,dismax4=0.1;
  for(int i=0;i<fend;i++){
    ray_triangle(0,0,zmin,zmax,200,zmin,anglemin,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    rayshow[0][0]=ray[0];rayshow[0][1]=ray[1];rayshow[0][2]=ray[2];rayshow[1][0]=ray[3];rayshow[1][1]=ray[4];rayshow[1][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if((r3D[0]==0 && r3D[1]==0) || Acir[1]<radians(anglemin) || Acir[1]>radians(anglemax) || Acir[2]!=zmin ){}
    else if(dismax1<sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]) && !(f[i][2]<zmin &&f[i][5]<zmin &&f[i][8]<zmin) && !(f[i][2]>zmin &&f[i][5]>zmin &&f[i][8]>zmin)){
    dismax1=sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]);b[0][0]=new vector(r3D[0],r3D[1],r3D[2]);}
   
    ray_triangle(0,0,zmin,zmax,200,zmin,anglemax,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    rayshow[2][0]=ray[0];rayshow[2][1]=ray[1];rayshow[2][2]=ray[2];rayshow[3][0]=ray[3];rayshow[3][1]=ray[4];rayshow[3][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if((r3D[0]==0 && r3D[1]==0) || Acir[1]<radians(anglemin) || Acir[1]>radians(anglemax) || Acir[2]!=zmin ){}
    else if(dismax2<sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]) && !(f[i][2]<zmin &&f[i][5]<zmin &&f[i][8]<zmin) && !(f[i][2]>zmin &&f[i][5]>zmin &&f[i][8]>zmin)){
    dismax2=sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]);b[2][0]=new vector(r3D[0],r3D[1],r3D[2]);}
    
    ray_triangle(0,0,zmin,zmax,200,zmax,anglemin,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    rayshow[4][0]=ray[0];rayshow[4][1]=ray[1];rayshow[4][2]=ray[2];rayshow[5][0]=ray[3];rayshow[5][1]=ray[4];rayshow[5][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if((r3D[0]==0 && r3D[1]==0) || Acir[1]<radians(anglemin) || Acir[1]>radians(anglemax) || Acir[2]!=zmax ){}
    else if(dismax3<sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]) && !(f[i][2]<zmax &&f[i][5]<zmax &&f[i][8]<zmax) && !(f[i][2]>zmax &&f[i][5]>zmax &&f[i][8]>zmax)){
    dismax3=sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]);b[0][2]=new vector(r3D[0],r3D[1],r3D[2]);}
    
    ray_triangle(0,0,zmin,zmax,200,zmax,anglemax,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    rayshow[6][0]=ray[0];rayshow[6][1]=ray[1];rayshow[6][2]=ray[2];rayshow[7][0]=ray[3];rayshow[7][1]=ray[4];rayshow[7][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if((r3D[0]==0 && r3D[1]==0) || Acir[1]<radians(anglemin) || Acir[1]>radians(anglemax) || Acir[2]!=zmax ){}
    else if(dismax4<sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]) && !(f[i][2]<zmin &&f[i][5]<zmin &&f[i][8]<zmin) && !(f[i][2]>zmax &&f[i][5]>zmax &&f[i][8]>zmax)){
    dismax4=sqrt(r3D[0]*r3D[0]+r3D[1]*r3D[1]);b[2][2]=new vector(r3D[0],r3D[1],r3D[2]);}
  }
  
 
  if(sqrt(b[0][0].vectori(0)*b[0][0].vectori(0)+b[0][0].vectori(1)*b[0][0].vectori(1))==0){b[0][0]=new vector(0,0,zmin);}
  if(sqrt(b[2][0].vectori(0)*b[2][0].vectori(0)+b[2][0].vectori(1)*b[2][0].vectori(1))==0){b[2][0]=new vector(0,0,zmin);}
  if(sqrt(b[0][2].vectori(0)*b[0][2].vectori(0)+b[0][2].vectori(1)*b[0][2].vectori(1))==0){b[0][2]=new vector(0,0,zmax);}
  if(sqrt(b[2][2].vectori(0)*b[2][2].vectori(0)+b[2][2].vectori(1)*b[2][2].vectori(1))==0){b[2][2]=new vector(0,0,zmax);}
 
  float x1=0,y1=0,z1=0,x2=0,y2=0,z2=0,x3=0,y3=0,z3=0,x4=0,y4=0,z4=0,dis1=0,dis2=0,dis3=0,dis4=0;

  for(int j=1;j<=4;j++){float findz=(zmax-zmin)/5*j+zmin;
     for(int i=0;i<fend;i++){
    ray_triangle(0,0,zmin,zmax,200,findz,anglemin,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    if(r3D[0]==0 && r3D[1]==0 && r3D[2]==0){continue;}
    rayshow[0][0]=ray[0];rayshow[0][1]=ray[1];rayshow[0][2]=ray[2];rayshow[1][0]=ray[3];rayshow[1][1]=ray[4];rayshow[1][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if(Acir[1]!=radians(anglemin) || Acir[0]<=5){continue;}
    show[0][showend][0]=r3D[0];show[0][showend][1]=r3D[1];show[0][showend][2]=r3D[2];vsh[showend]=0;showend++;
    float pax,pay,paz,dx,dy,dz,ansx,ansy,ansz;
    pax=r3D[0]-b[0][0].vectori(0);pay=r3D[1]-b[0][0].vectori(1);paz=r3D[2]-b[0][0].vectori(2);
    dx=b[0][2].vectori(0)-b[0][0].vectori(0);dy=b[0][2].vectori(1)-b[0][0].vectori(1);dz=b[0][2].vectori(2)-b[0][0].vectori(2);
    ansx=pay*dz-paz*dy;ansy=paz*dx-pax*dz;ansz=pax*dy-pay*dx;
    if( Acir[2]!=findz ){}else if(dis1<(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz)){
    dis1=(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz);x1=r3D[0];y1=r3D[1];z1=r3D[2];}}}
    show[0][showend][0]=x1;show[0][showend][1]=y1;show[0][showend][2]=z1;vsh[showend]=1;showend++;
    
  for(int j=1;j<=4;j++){float findz=(zmax-zmin)/5*j+zmin;
     for(int i=0;i<fend;i++){
    ray_triangle(0,0,zmin,zmax,200,findz,anglemax,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    if(r3D[0]==0 && r3D[1]==0 && r3D[2]==0){continue;}
    rayshow[0][0]=ray[0];rayshow[0][1]=ray[1];rayshow[0][2]=ray[2];rayshow[1][0]=ray[3];rayshow[1][1]=ray[4];rayshow[1][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if(Acir[1]-radians(anglemax%360)<=0.01 && Acir[1]-radians(anglemax%360)>=-0.01){continue;}if(Acir[0]<=5){continue;}
    show[0][showend][0]=r3D[0];show[0][showend][1]=r3D[1];show[0][showend][2]=r3D[2];vsh[showend]=0;showend++;
    float pax,pay,paz,dx,dy,dz,ansx,ansy,ansz;
    pax=r3D[0]-b[2][0].vectori(0);pay=r3D[1]-b[2][0].vectori(1);paz=r3D[2]-b[2][0].vectori(2);
    dx=b[2][2].vectori(0)-b[2][0].vectori(0);dy=b[2][2].vectori(1)-b[2][0].vectori(1);dz=b[2][2].vectori(2)-b[2][0].vectori(2);
    ansx=pay*dz-paz*dy;ansy=paz*dx-pax*dz;ansz=pax*dy-pay*dx;
    if( Acir[2]!=findz ){}else if(dis2<(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz)){
    dis2=(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz);x2=r3D[0];y2=r3D[1];z2=r3D[2];}}}
    show[0][showend][0]=x2;show[0][showend][1]=y2;show[0][showend][2]=z2;vsh[showend]=1;showend++;
    
   for(int j=1;j<=4;j++){float angle=(anglemax-anglemin)/5*j+anglemin;
     for(int i=0;i<fend;i++){
    ray_triangle(0,0,zmin,zmax,200,zmin,angle,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    if(r3D[0]==0 && r3D[1]==0 && r3D[2]==0){continue;}
    rayshow[0][0]=ray[0];rayshow[0][1]=ray[1];rayshow[0][2]=ray[2];rayshow[1][0]=ray[3];rayshow[1][1]=ray[4];rayshow[1][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if(Acir[1]!=radians(angle) || Acir[0]<=5){continue;}
    if(r3D[0]==0 && r3D[1]==0 &&r3D[2]==0){}
    else{show[0][showend][0]=r3D[0];show[0][showend][1]=r3D[1];show[0][showend][2]=r3D[2];vsh[showend]=0;showend++;}
    float pax,pay,paz,dx,dy,dz,ansx,ansy,ansz;
    pax=r3D[0]-b[0][0].vectori(0);pay=r3D[1]-b[0][0].vectori(1);paz=r3D[2]-b[0][0].vectori(2);
    dx=b[2][0].vectori(0)-b[0][0].vectori(0);dy=b[2][0].vectori(1)-b[0][0].vectori(1);dz=b[2][0].vectori(2)-b[0][0].vectori(2);
    ansx=pay*dz-paz*dy;ansy=paz*dx-pax*dz;ansz=pax*dy-pay*dx;
    if(Acir[1]!=radians(angle) ){}else if(dis3<(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz)){
    dis3=(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz);x3=r3D[0];y3=r3D[1];z3=r3D[2];}}}
    show[0][showend][0]=x3;show[0][showend][1]=y3;show[0][showend][2]=z3;vsh[showend]=1;showend++;
    
    for(int j=1;j<=4;j++){float angle=(anglemax-anglemin)/5*j+anglemin;
     for(int i=0;i<fend;i++){
    ray_triangle(0,0,zmin,zmax,200,zmax,angle,f[i][0],f[i][1],f[i][2],f[i][3],f[i][4],f[i][5],f[i][6],f[i][7],f[i][8]);
    if(r3D[0]==0 && r3D[1]==0 && r3D[2]==0){continue;}
    rayshow[0][0]=ray[0];rayshow[0][1]=ray[1];rayshow[0][2]=ray[2];rayshow[1][0]=ray[3];rayshow[1][1]=ray[4];rayshow[1][2]=ray[5];
    checkcirto3D(r3D[0],r3D[1],r3D[2]);
    if(Acir[1]!=radians(angle) || Acir[0]<=5){continue;}
    if(r3D[0]==0 && r3D[1]==0 &&r3D[2]==0){}
    else{show[0][showend][0]=r3D[0];show[0][showend][1]=r3D[1];show[0][showend][2]=r3D[2];vsh[showend]=0;showend++;}
    float pax,pay,paz,dx,dy,dz,ansx,ansy,ansz;
    pax=r3D[0]-b[0][2].vectori(0);pay=r3D[1]-b[0][2].vectori(1);paz=r3D[2]-b[0][2].vectori(2);
    dx=b[2][2].vectori(0)-b[0][2].vectori(0);dy=b[2][2].vectori(1)-b[0][2].vectori(1);dz=b[2][2].vectori(2)-b[0][2].vectori(2);
    ansx=pay*dz-paz*dy;ansy=paz*dx-pax*dz;ansz=pax*dy-pay*dx;
    if(Acir[1]!=radians(angle)){}else if(dis4<(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz)){
    dis4=(ansx*ansx+ansy*ansy+ansz*ansz)/(dx*dx+dy*dy+dz*dz);x4=r3D[0];y4=r3D[1];z4=r3D[2];}}}
    show[0][showend][0]=x4;show[0][showend][1]=y4;show[0][showend][2]=z4;vsh[showend]=1;showend++;
    
    float mid1x,mid1y,mid1z,mid2x,mid2y,mid2z,mid3x,mid3y,mid3z,mid4x,mid4y,mid4z;
    mid1x=(b[0][2].vectori(0)+b[0][0].vectori(0))/2;mid1y=(b[0][2].vectori(1)+b[0][0].vectori(1))/2;mid1z=(b[0][2].vectori(2)+b[0][0].vectori(2))/2;
    show[0][showend][0]=mid1x;show[0][showend][1]=mid1y;show[0][showend][2]=mid1z;vsh[showend]=2;showend++;
    mid2x=(b[2][2].vectori(0)+b[2][0].vectori(0))/2;mid2y=(b[2][2].vectori(1)+b[2][0].vectori(1))/2;mid2z=(b[2][2].vectori(2)+b[2][0].vectori(2))/2;
    show[0][showend][0]=mid2x;show[0][showend][1]=mid2y;show[0][showend][2]=mid2z;vsh[showend]=2;showend++;
    mid3x=(b[2][0].vectori(0)+b[0][0].vectori(0))/2;mid3y=(b[2][0].vectori(1)+b[0][0].vectori(1))/2;mid3z=(b[2][0].vectori(2)+b[0][0].vectori(2))/2;
    show[0][showend][0]=mid3x;show[0][showend][1]=mid3y;show[0][showend][2]=mid3z;vsh[showend]=2;showend++;
    mid4x=(b[2][2].vectori(0)+b[0][2].vectori(0))/2;mid4y=(b[2][2].vectori(1)+b[0][2].vectori(1))/2;mid4z=(b[2][2].vectori(2)+b[0][2].vectori(2))/2;
    show[0][showend][0]=mid4x;show[0][showend][1]=mid4y;show[0][showend][2]=mid4z;vsh[showend]=2;showend++;
    b[0][1]= new vector(2*x1-mid1x,2*y1-mid1y,2*z1-mid1z);
    show[0][showend][0]=2*x1-mid1x;show[0][showend][1]=2*y1-mid1y;show[0][showend][2]=2*z1-mid1z;vsh[showend]=3;showend++;
    b[2][1]= new vector(2*x2-mid2x,2*y2-mid2y,2*z2-mid2z);
    show[0][showend][0]=2*x2-mid2x;show[0][showend][1]=2*y2-mid2y;show[0][showend][2]=2*z2-mid2z;vsh[showend]=3;showend++;
    b[1][0]= new vector(2*x3-mid3x,2*y3-mid3y,2*z3-mid3z);
    show[0][showend][0]=2*x3-mid3x;show[0][showend][1]=2*y3-mid3y;show[0][showend][2]=2*z3-mid3z;vsh[showend]=3;showend++;
    b[1][2]= new vector(2*x4-mid4x,2*y4-mid4y,2*z4-mid4z);
    show[0][showend][0]=2*x4-mid4x;show[0][showend][1]=2*y4-mid4y;show[0][showend][2]=2*z4-mid4z;vsh[showend]=3;showend++;
    
  N=Bstrange.arraysize();b[1][1]=new vector();
  for(int i=0;i<N;i++){p[i]=new vector();}
  for(int i=0;i<N;i++){p[i]=new vector(Bstrange.stackArr[i][0],Bstrange.stackArr[i][1],Bstrange.stackArr[i][2]);u[i]=0.5;v[i]=0.5;}
  for(int i=0; i<30; i++){Find_b11();  if(Bstrange.arraysize()<=7){ 
  win5out[win5outlength]="checkrc33(0,"+Float.toString(b[0][0].vectori(0))+","+Float.toString(b[0][0].vectori(1))+","+Float.toString(b[0][0].vectori(2))+","+Float.toString(b[0][1].vectori(0))+","+Float.toString(b[0][1].vectori(1))+","+
  Float.toString(b[0][1].vectori(2))+","+Float.toString(b[0][2].vectori(0))+","+Float.toString(b[0][2].vectori(1))+","+Float.toString(b[0][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="checkrc33(1,"+Float.toString(b[1][0].vectori(0))+","+Float.toString(b[1][0].vectori(1))+","+Float.toString(b[1][0].vectori(2))+","+Float.toString(b[1][1].vectori(0))+","+Float.toString(b[1][1].vectori(1))+","+
  Float.toString(b[1][1].vectori(2))+","+Float.toString(b[1][2].vectori(0))+","+Float.toString(b[1][2].vectori(1))+","+Float.toString(b[1][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="checkrc33(2,"+Float.toString(b[2][0].vectori(0))+","+Float.toString(b[2][0].vectori(1))+","+Float.toString(b[2][0].vectori(2))+","+Float.toString(b[2][1].vectori(0))+","+Float.toString(b[2][1].vectori(1))+","+
  Float.toString(b[2][1].vectori(2))+","+Float.toString(b[2][2].vectori(0))+","+Float.toString(b[2][2].vectori(1))+","+Float.toString(b[2][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="beziersurfacelinerc33("+Float.toString(255)+","+Float.toString(0)+","+Float.toString(255)+",0.0,"+Float.toString(0.05)+")";       win5outlength++;return; }
  Rearrange();}
  show[0][showend][0]=b[1][1].vectori(0);show[0][showend][1]=b[1][1].vectori(1);show[0][showend][2]=b[1][1].vectori(2);vsh[showend]=4;showend++;

  checkrc33(0,b[0][0].vectori(0),b[0][0].vectori(1),b[0][0].vectori(2),b[0][1].vectori(0),b[0][1].vectori(1),b[0][1].vectori(2),b[0][2].vectori(0),b[0][2].vectori(1),b[0][2].vectori(2));
  checkrc33(1,b[1][0].vectori(0),b[1][0].vectori(1),b[1][0].vectori(2),b[1][1].vectori(0),b[1][1].vectori(1),b[1][1].vectori(2),b[1][2].vectori(0),b[1][2].vectori(1),b[1][2].vectori(2));
  checkrc33(2,b[2][0].vectori(0),b[2][0].vectori(1),b[2][0].vectori(2),b[2][1].vectori(0),b[2][1].vectori(1),b[2][1].vectori(2),b[2][2].vectori(0),b[2][2].vectori(1),b[2][2].vectori(2));
  Ast_Bezier_surface_line_rc33(0.05);
  
  float error=error_function();
  Ast.clear();
  println("point: ",Bstrange.arraysize(),"error=", error,"range=",zmin,zmax,anglemin,anglemax);
  
  if(error>alpha){
     com(zmin,(zmin+zmax)/2,anglemin,(anglemin+anglemax)/2);
     com(zmin,(zmin+zmax)/2,(anglemin+anglemax)/2,anglemax);
     com((zmin+zmax)/2,zmax,anglemin,(anglemin+anglemax)/2);
     com((zmin+zmax)/2,zmax,(anglemin+anglemax)/2,anglemax);}
  else{
  win5out[win5outlength]="checkrc33(0,"+Float.toString(b[0][0].vectori(0))+","+Float.toString(b[0][0].vectori(1))+","+Float.toString(b[0][0].vectori(2))+","+Float.toString(b[0][1].vectori(0))+","+Float.toString(b[0][1].vectori(1))+","+
  Float.toString(b[0][1].vectori(2))+","+Float.toString(b[0][2].vectori(0))+","+Float.toString(b[0][2].vectori(1))+","+Float.toString(b[0][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="checkrc33(1,"+Float.toString(b[1][0].vectori(0))+","+Float.toString(b[1][0].vectori(1))+","+Float.toString(b[1][0].vectori(2))+","+Float.toString(b[1][1].vectori(0))+","+Float.toString(b[1][1].vectori(1))+","+
  Float.toString(b[1][1].vectori(2))+","+Float.toString(b[1][2].vectori(0))+","+Float.toString(b[1][2].vectori(1))+","+Float.toString(b[1][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="checkrc33(2,"+Float.toString(b[2][0].vectori(0))+","+Float.toString(b[2][0].vectori(1))+","+Float.toString(b[2][0].vectori(2))+","+Float.toString(b[2][1].vectori(0))+","+Float.toString(b[2][1].vectori(1))+","+
  Float.toString(b[2][1].vectori(2))+","+Float.toString(b[2][2].vectori(0))+","+Float.toString(b[2][2].vectori(1))+","+Float.toString(b[2][2].vectori(2))+")";win5outlength++;
  win5out[win5outlength]="beziersurfacelinerc33("+Float.toString(255)+","+Float.toString(0)+","+Float.toString(255)+",0.0,"+Float.toString(0.05)+")";win5outlength++;}
}

void rangein(float zmin,float zmax,float anglemin,float anglemax){
  for(int i=0;i<row;i++){checkcirto3D(obj[i][0]-ax,obj[i][1]-ay,obj[i][2]-az);
    if(Acir[2]>=zmin && Acir[2]<=zmax && Acir[1]>=radians(anglemin) && Acir[1]<=radians(anglemax))
    {Bstrange.push(obj[i][0]-ax,obj[i][1]-ay,obj[i][2]-az);}}}
  
float error_function(){
  float errorf=1e9;
  if(min(Bstrange.arraysize(),Ast.arraysize())<0){return 1;}
  for(int i=0;i<=min(Bstrange.arraysize(),Ast.arraysize());i++){
    vector err=new vector(Ast.ix(i)-Bstrange.ix(i),Ast.iy(i)-Bstrange.iy(i),Ast.iz(i)-Bstrange.iz(i));
    if(norm(err)<errorf){errorf=norm(err);}}
  return errorf;}

void Find_b11(){
   vector r= new vector(); float s=0.01;
   for(int i=0; i<N; i++){
      if(norm(BSu(u[i], v[i]))<0.001 || norm(BSv(u[i], v[i]))<0.001) continue;
      vector y= new vector();
      y=minus(BS(u[i], v[i]),mul(b[1][1],B(1, u[i])*B(1, v[i])));
      r=plus(r,mul(minus(p[i],y),B(1, u[i])*B(1, v[i])));
      s+=B(1, u[i])*B(1, u[i])*B(1, v[i])*B(1, v[i]);}
   b[1][1]=mul(r,1/s);}
      
void Rearrange(){
   for(int i=0; i<N; i++){
      if(norm(BSu(u[i], v[i]))<0.001 || norm(BSv(u[i], v[i]))<0.001) continue;
      float ut=u[i]-ep*(BSu(u[i], v[i]).vectori(0)*(minus(BS(u[i], v[i]),p[i])).vectori(0)+BSu(u[i], v[i]).vectori(1)*(minus(BS(u[i], v[i]),p[i])).vectori(1)+BSu(u[i], v[i]).vectori(2)*(minus(BS(u[i], v[i]),p[i])).vectori(2))/norm(BSu(u[i], v[i]))/norm(BSu(u[i], v[i]));
      float vt=v[i]-ep*(BSv(u[i], v[i]).vectori(0)*(minus(BS(u[i], v[i]),p[i])).vectori(0)+BSv(u[i], v[i]).vectori(1)*(minus(BS(u[i], v[i]),p[i])).vectori(1)+BSv(u[i], v[i]).vectori(2)*(minus(BS(u[i], v[i]),p[i])).vectori(2))/norm(BSv(u[i], v[i]))/norm(BSv(u[i], v[i]));
      u[i]=ut; v[i]=vt;}}
   
   
void Ast_Bezier_surface_line_rc33(float gap){
  int i,j;float u,v;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1.001;u+=gap){for(v=0;v<=1.001;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumx+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][0];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumy+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][1];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumz+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;
      Ast.push(sumx,sumy,sumz);}}}
      
float floattry(String str){
  float[] subfloat = new float[2];float ans;
  int now=0;subfloat[0]=0;subfloat[1]=0;String[] newfloat = split(str,'.');
  for(int i=0;i<2;i++){for(int j=0;j<newfloat[i].length();j++){
      if(newfloat[i].substring(j,j+1).equals("E")==true){
      if(newfloat[i].substring(j+1,j+2).equals("-")){
      ans=subfloat[0]+subfloat[1]/pow(10,j);
      ans/=power(10,inttry(newfloat[i].substring(j+2,newfloat[1].length())));return ans;}
      else{ ans=subfloat[0]+subfloat[1]/pow(10,j);
      ans*=power(10,inttry(newfloat[i].substring(j+1,newfloat[i].length())));return ans;}}
      if(newfloat[i].substring(j,j+1).equals("0")==true){now=0;}
      if(newfloat[i].substring(j,j+1).equals("1")==true){now=1;}
      if(newfloat[i].substring(j,j+1).equals("2")==true){now=2;}
      if(newfloat[i].substring(j,j+1).equals("3")==true){now=3;}
      if(newfloat[i].substring(j,j+1).equals("4")==true){now=4;}
      if(newfloat[i].substring(j,j+1).equals("5")==true){now=5;}
      if(newfloat[i].substring(j,j+1).equals("6")==true){now=6;}
      if(newfloat[i].substring(j,j+1).equals("7")==true){now=7;}
      if(newfloat[i].substring(j,j+1).equals("8")==true){now=8;}
      if(newfloat[i].substring(j,j+1).equals("9")==true){now=9;}
      subfloat[i]*=10;subfloat[i]+=now;}}ans=subfloat[0]+subfloat[1]/pow(10,newfloat[1].length());return ans;}
      
float floattry2(String line)
{  float line2;
  if((line.substring(0,1)).equals("-")){line2=(-1)*floattry(line.substring(1,line.length()-1));}
      else{line2=floattry(line);}
   return line2;}
   
int inttry(String str){
  int ans=0,now=0;String[] newfloat = new String [2];newfloat[0]=str;//println(str);
  for(int i=0;i<1;i++){for(int j=0;j<newfloat[i].length();j++){
      if(newfloat[i].substring(j,j+1).equals("0")==true){now=0;}
      if(newfloat[i].substring(j,j+1).equals("1")==true){now=1;}
      if(newfloat[i].substring(j,j+1).equals("2")==true){now=2;}
      if(newfloat[i].substring(j,j+1).equals("3")==true){now=3;}
      if(newfloat[i].substring(j,j+1).equals("4")==true){now=4;}
      if(newfloat[i].substring(j,j+1).equals("5")==true){now=5;}
      if(newfloat[i].substring(j,j+1).equals("6")==true){now=6;}
      if(newfloat[i].substring(j,j+1).equals("7")==true){now=7;}
      if(newfloat[i].substring(j,j+1).equals("8")==true){now=8;}
      if(newfloat[i].substring(j,j+1).equals("9")==true){now=9;}
      ans*=10;ans+=now;}}return ans;}
      
void cylinder_ray(float x,float y, float zmin,float zmax, float r,float findz,float angle){
  float x1,y1,z1,x2,y2,z2;
   x1=x+r*cos(radians(angle));y1=y+r*sin(radians(angle));z1=findz;
   x2=x;y2=y;z2=findz;
   line3D(x1,y1,z1,x2,y2,z2,size,255,0,0,3);
   /*point3D_RGB(x1,y1,z1,250,0,250,7,size);point3D_RGB(x2,y2,z2,250,0,250,7,size);*/
   ray[0]=x1;ray[1]=y1;ray[2]=z1;ray[3]=x2;ray[4]=y2;ray[5]=z2;}
   
void ray_triangle(float x,float y, float zmin,float zmax, float r,float findz,float angle,float trix1,float triy1,float triz1,float trix2,float triy2,float triz2,float trix3,float triy3,float triz3){
  float x1,y1,z1,x2,y2,z2,dx,dy,dz,x0,y0,z0,t,u,v,e1x,e1y,e1z,e2x,e2y,e2z,Tx,Ty,Tz,Px,Py,Pz,Qx,Qy,Qz;
   x1=x+r*cos(radians(angle));y1=y+r*sin(radians(angle));z1=findz;x2=x;y2=y;z2=findz;
   ray[0]=x1;ray[1]=y1;ray[2]=z1;ray[3]=x2;ray[4]=y2;ray[5]=z2;
  dx=(ray[0]-ray[3])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  dy=(ray[1]-ray[4])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  dz=(ray[2]-ray[5])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  x0=x;y0=y;z0=findz;
  e1x=trix2-trix1;e1y=triy2-triy1;e1z=triz2-triz1;e2x=trix3-trix1;e2y=triy3-triy1;e2z=triz3-triz1;
  Tx=x0-trix1;Ty=y0-triy1;Tz=z0-triz1;
  Px=dy*e2z-dz*e2y;Py=dz*e2x-dx*e2z;Pz=dx*e2y-dy*e2x;Qx=Ty*e1z-Tz*e1y;Qy=Tz*e1x-Tx*e1z;Qz=Tx*e1y-Ty*e1x;
  t=(Qx*e2x+Qy*e2y+Qz*e2z)/(Px*e1x+Py*e1y+Pz*e1z);u=(Px*Tx+Py*Ty+Pz*Tz)/(Px*e1x+Py*e1y+Pz*e1z);v=(Qx*dx+Qy*dy+Qz*dz)/(Px*e1x+Py*e1y+Pz*e1z);
  if( (u>0) && (u<1) && (v>0) && (v<1)  ){r3D[0]=x0+t*dx;r3D[1]=y0+t*dy;r3D[2]=z0+t*dz;/*point3D_RGB(x0+t*dx,y0+t*dy,z0+t*dz,0,250,60,10,size);*/}else{r3D[0]=0;r3D[1]=0;r3D[2]=0;}}
  
void tri_gappoint(float trix1,float triy1,float triz1,float trix2,float triy2,float triz2,float trix3,float triy3,float triz3,float gap){
  float x,y,z;
  for(float u=0;u<=1;u+=gap){for(float v=0;v<=1;v+=gap){
      if(u+v>1){continue;}
       x=trix1*u+trix2*v+trix3*(1-u-v);
       y=triy1*u+triy2*v+triy3*(1-u-v);
       z=triz1*u+triz2*v+triz3*(1-u-v);
       point3D_RGB(x,y,z,250,150,0,1,size);}}}
       
void triangle_3D(float trix1,float triy1,float triz1,float trix2,float triy2,float triz2,float trix3,float triy3,float triz3){
  line3D(trix1,triy1,triz1,trix2,triy2,triz2,size,250,150,0,1);
  line3D(trix2,triy2,triz2,trix3,triy3,triz3,size,250,150,0,1);
  line3D(trix3,triy3,triz3,trix1,triy1,triz1,size,250,150,0,1);
  line3D((trix1+trix2)/2,(triy1+triy2)/2,(triz1+triz2)/2,(trix2+trix3)/2,(triy2+triy3)/2,(triz2+triz3)/2,size,250,150,0,1);
  line3D((trix2+trix3)/2,(triy2+triy3)/2,(triz2+triz3)/2,(trix3+trix1)/2,(triy3+triy1)/2,(triz3+triz1)/2,size,250,150,0,1);
  line3D((trix3+trix1)/2,(triy3+triy1)/2,(triz3+triz1)/2,(trix1+trix2)/2,(triy1+triy2)/2,(triz1+triz2)/2,size,250,150,0,1);}
  
  
void cylinder(float x,float y, float zmin,float zmax, float r){
   float z,w,m,n,l,p;
   for(int i=0;i<=360;i++){for(int j=0;j<=5;j++){
       z=r*cos(radians(i))+x;w=r*sin(radians(i))+y;m=(zmax-zmin)/5*j+zmin;point3D_RGB(z,w,m,0,202,250,1,size);}
       z=r*cos(radians(i))+x;w=r*sin(radians(i))+y;m=zmin;l=r*cos(radians(i))+x;p=r*sin(radians(i))+y;n=zmax;
       point3D_RGB(z,w,m,0,202,250,1,size);point3D_RGB(l,p,n,0,202,250,1,size);
       if(i%45==0){line3D(z,w,m,l,p,n,size,0,202,250,1);}}}
    
    
void checkcirto3D(float x,float y,float z){
   Acir[0]=sqrt(x*x+y*y);
   if(x>0 && y>=0){Acir[1]=atan(y/x);}
   else if(x<=0 && y>0){Acir[1]=PI/2+atan(-x/y);}
   else if(x<0 && y<=0){Acir[1]=PI+atan(y/x);}
   else if(x>=0 && y<0){Acir[1]=3*PI/2+atan(-x/y);}
   Acir[2]=z;}
   void makecoordinate() {
  strokeWeight(5);fill(0);
  if (coordinateTRUE==1) {
    line3D(-350, 0, 0, 350, 0, 0, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    line3D(0, -350, 0, 0, 350, 0, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    line3D(0, 0, -350, 0, 0, 350, size, 255*coordinateBW, 255*coordinateBW, 255*coordinateBW, 5);
    textSize(20);stroke(255);fill(255*coordinateBW);
    check3D(360, 0, 0, size);   text("+x", 950+A[0], 400+A[1]);
    check3D(-360, 0, 0, size);  text("-x", 950+A[0], 400+A[1]);
    check3D(0, 360, 0, size);   text("+y", 950+A[0], 400+A[1]);
    check3D(0, -360, 0, size);  text("-y", 950+A[0], 400+A[1]);
    check3D(0, 0, 360, size);   text("+z", 950+A[0], 400+A[1]);
    check3D(0, 0, -360, size);  text("-z", 950+A[0], 400+A[1]);
    text(" 3D coordinate", 410, 40);
    if(consolcheck==0){textSize(20);stroke(255);fill(255);strokeWeight(5);text("screen:",415,70);text(ex,488,70);stroke(0);fill(0);strokeWeight(5);}
    fill(0);stroke(0);
  }}
  
void rebar() {
  strokeWeight(5);
  if ((mouseX>=400)&&(mouseY>=0)&&(mouseY<=800)&&(mouseX<=1500)) {
    fill(0);rect(50-10, 83-10, 300+20, 20);
    fill(100);rect(50, 83-5, 300, 10);
    fill(255, 0, 0);ellipse((mouseY/800.0)*300+50, 83, 15, 15);
    fill(0);rect(50-10, 145-10, 300+20, 20);
    fill(100);rect(50, 145-5, 300, 10);
    fill(255, 0, 0);ellipse(((mouseX-400)/1100.0)*300+50, 145, 15, 15);
    fill(0);rect(50-10, 200-10, 300+20, 20);
    fill(100);rect(50, 200-5, 300, 10);
    fill(255, 0, 0);ellipse(size/1.5*300+50, 200, 15, 15);} 
  else {
    fill(0);rect(50-10, 83-10, 300+20, 20);
    fill(100);rect(50, 83-5, 300, 10);
    fill(255, 0, 0);ellipse((pi/360)*300+50, 83, 15, 15);
    fill(0);rect(50-10, 145-10, 300+20, 20);
    fill(100);rect(50, 145-5, 300, 10);
    fill(255, 0, 0);ellipse(ceta/360.0*300+50, 145, 15, 15);
    fill(0);rect(50-10, 200-10, 300+20, 20);
    fill(100);rect(50, 200-5, 300, 10);
    fill(255, 0, 0);ellipse(size/1.5*300+50, 200, 15, 15);
  }}
  
void make_bar() {
  bar1(83, 50, 350);
  bar2(145, 50, 350);
  bar3(200, 50, 350);
  bar4(50, 300, 450);
  bar5(100, 300, 450);
  bar6(150, 300, 450);
  bar7(225, 300, 450);
  bar8(275, 300, 450);
  bar9(325, 300, 450);
  bar10(600, 50, 250);
  bar11(650, 50, 250);
  bar12(700, 50, 250);
  bar13(750, 50, 250);}
  
void bar1(float y, float x1, float x2) {    //pi
  pi_bary=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(pi_barx, pi_bary, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      pi_barx=mouseX;pi=(pi_barx-x1)/(x2-x1)*360;}
  strokeWeight(5);}

void bar2(float y, float x1, float x2) {    //ceta
  ceta_bary=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(ceta_barx, ceta_bary, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      ceta_barx=mouseX;ceta=(ceta_barx-x1)/(x2-x1)*360;}
  strokeWeight(5);}
  
void bar3(float y, float x1, float x2) {    //size
  size_bary=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(size_barx, size_bary, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      size_barx=mouseX;size=(size_barx-x1)/(x2-x1)*1.5;}
  strokeWeight(5);}
  
void bar4(float x, float y1, float y2) {    //RMatrial
  RMatrialx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(RMatrialx, RMatrialy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)&&(colorexits==-1)) {
      RMatrialy=mouseY;RMaterial=255-(int)((RMatrialy-y1)/(y2-y1)*255);}
  strokeWeight(5);}
  
void bar5(float x, float y1, float y2) {    //GMaterial
  GMatrialx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(GMatrialx, GMatrialy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)&&(colorexits==-1)) {
      GMatrialy=mouseY;GMaterial=255-(int)((GMatrialy-y1)/(y2-y1)*255);}
  strokeWeight(5);}
  
void bar6(float x, float y1, float y2) {    //BMaterial
  BMatrialx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(BMatrialx, BMatrialy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)&&(colorexits==-1)) {
      BMatrialy=mouseY;BMaterial=255-(int)((BMatrialy-y1)/(y2-y1)*255);}
  strokeWeight(5);}
  
void bar7(float x, float y1, float y2) {   //lightx
  lightxx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(lightxx, lightxy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)) {
      lightxy=mouseY;lightx=255-(int)((lightxy-y1)/(y2-y1)*512);}
  strokeWeight(5);}
  
void bar8(float x, float y1, float y2) {   //lighty
  lightyx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(lightyx, lightyy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)) {
      lightyy=mouseY;lighty=255-(int)((lightyy-y1)/(y2-y1)*512);}
  strokeWeight(5);}
  
void bar9(float x, float y1, float y2) {   //lightz
  lightzx=x;
  fill(0);rect(x-10, y1-10, 20, y2-y1+20);
  fill(100);rect(x-5, y1, 10, y2-y1);
  fill(255, 0, 0);ellipse(lightzx, lightzy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x+10)&&(mouseX>=x-10)&&(mouseY>y1)&&(mouseY<y2)) {
      lightzy=mouseY;lightz=255-(int)((lightzy-y1)/(y2-y1)*512);}
  strokeWeight(5);}
  
void bar10(float y, float x1, float x2) {   //lightcolorR
  lightcolorRy=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(lightcolorRx, lightcolorRy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      lightcolorRx=mouseX;lightcolorR=(lightcolorRx-x1)/(x2-x1)*255;}
  strokeWeight(5);}
  
void bar11(float y, float x1, float x2) {   //lightcolorG
  lightcolorGy=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(lightcolorGx, lightcolorGy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      lightcolorGx=mouseX;lightcolorG=(lightcolorGx-x1)/(x2-x1)*255;}
  strokeWeight(5);}
  
void bar12(float y, float x1, float x2) {   //lightcolorB
  lightcolorBy=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(lightcolorBx, lightcolorBy, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      lightcolorBx=mouseX;lightcolorB=(lightcolorBx-x1)/(x2-x1)*255;}
  strokeWeight(5);}
  
void bar13(float y, float x1, float x2) {   //lightpower
  lightpowery=y;
  fill(0);rect(x1-10, y-10, x2-x1+20, 20);
  fill(100);rect(x1, y-5, x2-x1, 10);
  fill(255, 0, 0);ellipse(lightpowerx, lightpowery, 15, 15);
  if ((mouseButton==LEFT)&&(mouseX<=x2)&&(mouseX>=x1)&&(mouseY>y-10)&&(mouseY<y+10)) {
      lightpowerx=mouseX;lightpower=(lightpowerx-x1)/(x2-x1)*30;}
  strokeWeight(5);}
  
void madeswitch1(float x, float y, int R1, int G1, int B1, int R2, int G2, int B2, float dx, float dy) {
  strokeWeight(5);
  fill(255);rect(x, y, dx, dy);
  fill(0);line(x+dx/2, y, x+dx/2, y+dy);
  if (coordinateTRUE==1)  {fill(R2, G2, B2);rect(x, y, dx/2, dy);}
  if (coordinateTRUE==-1) {fill(R1, G1, B1);rect(x+dx/2, y, dx/2, dy);}
  if ((mouseButton==LEFT)&&(mouseX>=x+dx/2)&&(mouseX<=x+dx)&&(mouseY>=y)&&(mouseY<=y+dy)) {coordinateTRUE=-1;}
  if ((mouseButton==LEFT)&&(mouseX>=x)&&(mouseX<=x+dx/2)&&(mouseY>=y)&&(mouseY<=y+dy))    {coordinateTRUE=1;}}
  
void madeswitch2(float x, float y, int R1, int G1, int B1, int R2, int G2, int B2, float dx, float dy) {
  strokeWeight(5);
  fill(255);rect(x, y, dx, dy);
  fill(0);line(x+dx/2, y, x+dx/2, y+dy);
  if (coordinateBW==-1) {fill(R2, G2, B2);rect(x, y, dx/2, dy);}
  if (coordinateBW==1)  {fill(R1, G1, B1);rect(x+dx/2, y, dx/2, dy);}
  if ((mouseButton==LEFT)&&(mouseX>=x+dx/2)&&(mouseX<=x+dx)&&(mouseY>=y)&&(mouseY<=y+dy)) {coordinateBW=1;}
  if ((mouseButton==LEFT)&&(mouseX>=x)&&(mouseX<=x+dx/2)&&(mouseY>=y)&&(mouseY<=y+dy)) {coordinateBW=-1;}}
  
void setangle() {
  background(255-255*coordinateBW);fill(#FFEA00);rect(0, 0, 400, 800);
  fill(255*coordinateBW);rect(370, 0, 25, 800);fill(0);
  if ((mouseX>=400)&&(mouseY>=0)&&(mouseY<=800)&&(mouseX<=1500)) {
    ceta=(mouseX-400)/1100.0*360.0;pi=mouseY/800.0*360.0;}
  text("angle", 45, 30);text("phi=", 45, 60);text("theta=", 45, 120);text("size=", 45, 180);
  fill(255, 0, 0);text("R", 45, 275);fill(0);text("G", 95, 275);fill(0, 0, 255);text("B", 145, 275);
  fill(0);text("Lights?", 245, 245);
  fill(0);text("x", 220, 275);fill(0);text("y", 270, 275);fill(0);text("z", 320, 275);
  stroke(#0091FC);fill(#0091FC); rect(250, 20, 90, 20);fill(0);stroke(0);textSize(20);text("retrieve", 259, 38);strokeWeight(5);
  if ((mouseX>=250)&&(mouseX<=340)&&(mouseY>=20)&&(mouseY<=40)&&(mouseButton==LEFT)) {Bst.clear();consolcheck=2;}
  if (colorexits==1) {fill(255, 0, 0);text("fixed!", 75, 520);}
  fill(0);text("Lights(R,G,B,Power)", 40, 560);
  fill(255, 0, 0);text("R", 20, 605);fill(0);text("G", 20, 655);fill(0, 0, 255);text("B", 20, 705);fill(0);text("P", 20, 755);
  text(pi, 85, 60);text(ceta, 105, 120);text(size, 100, 180);
  text(RMaterial, 30, 485);text(GMaterial, 80, 485);text(BMaterial, 130, 485);
  text((int)lightx, 205, 485);text((int)lighty, 255, 485);text((int)lightz, 305, 485);
  text((int)lightcolorR, 300, 605);text((int)lightcolorG, 300, 655);text((int)lightcolorB, 300, 705);
  text((int)lightpower, 300, 755);
  fill(0);stroke(0);}
  
void mouseWheel(MouseEvent event) {
  if (windowup==1){
  if (((mouseX>=400)&&(mouseY>=0)&&(mouseY<=800)&&(mouseX<=1500))&&(size>=0.1)&&(size<=1.49)) {
      float e = event.getCount()*0.01;size-=e;setangle();makecoordinate();}
      strokeWeight(5);fill(0);make_bar();rebar();}}
      void Bezier3Ddata(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz){if(siz==0){siz=size;}
  data[count]="#function name: Bezier3D 11 sources"; count++;data[count]="#x0: "+Float.toString(x0); count++;data[count]="#y0: "+Float.toString(y0); count++;
  data[count]="#z0: "+Float.toString(z0); count++;data[count]="#x1: "+Float.toString(x1); count++;data[count]="#y1: "+Float.toString(y1); count++;data[count]="#z1: "+Float.toString(z1); count++;
  data[count]="#x2: "+Float.toString(x2); count++;data[count]="#y2: "+Float.toString(y2); count++;data[count]="#z2: "+Float.toString(z2); count++;data[count]="#num: "+Float.toString(num); count++;
  data[count]="#siz: "+Float.toString(siz); count++;data[count]="#bezier3ddata: point:";count++;
  float z,w,k,t=0;
  for(t=0;t<=1;t+=0.005){z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;k=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;point3D_RGBdata(z,w,k,255,0,0,5,siz);Bpoint3D(z,w,k);}
  data[count]="#bezier3ddata: control point:";count++;
  point3Dcvdata(x0,y0,z0,siz);count2--;point3Dcvdata(x1,y1,z1,siz);count2--;point3Dcvdata(x2,y2,z2,siz);count2--;//control
  stroke(0);fill(0);}
  
void Bezier_surface_control_line_rc44data(float R,float G,float B,float siz){if(siz==0){siz=size;}
  data[count]="#function name: Bezier_surface_control_line_rc44 4 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;
    for(int i=0;i<4;i++) {for(int j=1;j<4;j++) {line3Ddata(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<4;j++) {for(int i=1;i<4;i++) {line3Ddata(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}}
    
void Bezier_surface_control_line_rc33data(float R,float G,float B,float siz){if(siz==0){siz=size;}
data[count]="#function name: Bezier_surface_control_line_rc33 4 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;
    for(int i=0;i<3;i++) {for(int j=1;j<3;j++) {line3Ddata(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<3;j++) {for(int i=1;i<3;i++) {line3Ddata(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}}
    
void Bezier_surface_line_rc44data(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  data[count]="#function name: Bezier_surface_line_rc44 5 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;data[count]="#gap: "+Float.toString(gap);count++;
  int i,j;float u,v,max=0;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1;u+=gap){for(v=0;v<=1;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumx+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][0];}}
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumy+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][1];}}
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumz+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;
      data[count]="#u,v vertex: "+Integer.toString((int)(u*1000))+" "+Integer.toString((int)(v*1000))+" "+Float.toString(sumx)+" "+Float.toString(sumy)+" "+Float.toString(sumz);count++;
      if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
      data[count]="#maxdistance: "+Float.toString(max);count++;
   for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;
    for(v=0;v<=1;v+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);
           Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
   for(v=0;v<=1;v+=gap){float savx=0,savy=0,savz=0;
    for(u=0;u<=1;u+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);
           Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
           
void Bezier_surface_line_rc33data(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
   data[count]="#function name: Bezier_surface_line_rc33 5 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;data[count]="#gap: "+Float.toString(gap);count++;
  int i,j;float u,v,max=0;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1.001;u+=gap){for(v=0;v<=1.001;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumx+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][0];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumy+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][1];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumz+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][2];}}
       data[count]="#u,v vertex: "+Integer.toString((int)(u*1000))+" "+Integer.toString((int)(v*1000))+" "+Float.toString(sumx)+" "+Float.toString(sumy)+" "+Float.toString(sumz);count++;
      if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
      data[count]="#maxdistance: "+Float.toString(max);count++;
   for(u=0;u<=1.001;u+=gap){float savx=0,savy=0,savz=0;
    for(v=0;v<=1.001;v+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);Bline3D(savx,savy,savz,sumx,sumy,sumz);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
   for(v=0;v<=1.001;v+=gap){float savx=0,savy=0,savz=0;
    for(u=0;u<=1.001;u+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);Bline3D(savx,savy,savz,sumx,sumy,sumz);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
        
void Bezier_triangle_control_line44data(float R,float G,float B,float siz){int i,j,k;if(siz==0){siz=size;}
  data[count]="#function name: Bezier_triangle_control_line44 4 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;
  for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=2){k=3-i-j;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i][j+1][k-1][0],T[i][j+1][k-1][1],T[i][j+1][k-1][2],siz,R,G,B,1);}}}
  for(j=0;j<=3;j++){for(k=0;k<=3;k++){if(k+j<=2){i=3-k-j;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i-1][j][k+1][0],T[i-1][j][k+1][1],T[i-1][j][k+1][2],siz,R,G,B,1);}}}
  for(k=0;k<=3;k++){for(i=0;i<=3;i++){if(i+k<=2){j=3-i-k;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i+1][j-1][k][0],T[i+1][j-1][k][1],T[i+1][j-1][k][2],siz,R,G,B,1);}}}}
  
void Bezier_triangle_line44data(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  data[count]="#function name: Bezier_triangle_line44 5 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;data[count]="#gap: "+Float.toString(gap);count++;
  int i,j,k;float s,t,u,max=0;float[][][][] save=new float[105][105][105][3];
  for(s=0;s<=1;s+=gap){for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1-s-t;float sumx=0,sumy=0,sumz=0;
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumx+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][0];}}}
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumy+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][1];}}}
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumz+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][2];}}}
        save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0]=sumx;save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1]=sumy;save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2]=sumz;
        data[count]="#s,t,u vertex: "+Integer.toString((int)(s*100))+" "+Integer.toString((int)(t*100))+" "+Integer.toString((int)(u*100))+" "+Float.toString(sumx)+" "+Float.toString(sumy)+" "+Float.toString(sumz);count++;
      if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
      data[count]="#maxdistance: "+Float.toString(max);count++; 
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1-s-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
           Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(u+t>1){continue;}s=1-u-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
        Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+u>1){continue;}t=1-u-s;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
        Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+t>1){continue;}u=1-s-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
        Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(u+t>1){continue;}s=1-u-t; 
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
        Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(s+u>1){continue;}t=1-u-s;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
        Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
      
void Bezier_triangle_control_line33data(float R,float G,float B,float siz){int i,j,k;if(siz==0){siz=size;}
 data[count]="#function name: Bezier_triangle_control_line33 4 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="siz: "+Float.toString(siz);count++;
  for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=1){k=2-i-j;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i][j+1][k-1][0],T[i][j+1][k-1][1],T[i][j+1][k-1][2],siz,R,G,B,1);}}}
  for(j=0;j<=2;j++){for(k=0;k<=2;k++){if(k+j<=1){i=2-k-j;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i-1][j][k+1][0],T[i-1][j][k+1][1],T[i-1][j][k+1][2],siz,R,G,B,1);}}}
  for(k=0;k<=2;k++){for(i=0;i<=2;i++){if(i+k<=1){j=2-i-k;line3Ddata(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i+1][j-1][k][0],T[i+1][j-1][k][1],T[i+1][j-1][k][2],siz,R,G,B,1);}}}}
  
void Bezier_triangle_line33data(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  data[count]="#function name: Bezier_triangle_line33 5 sources"; count++;data[count]="#R: "+Float.toString(R); count++;data[count]="#G: "+Float.toString(G); count++;
  data[count]="#B: "+Float.toString(B); count++;data[count]="#siz: "+Float.toString(siz);count++;data[count]="#gap: "+Float.toString(gap);count++;
  int i,j,k;float s,t,u,max=0;float[][][][] save2=new float[105][105][105][3];
  for(s=0;s<=1;s+=gap){for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1.01-s-t;float sumx=0,sumy=0,sumz=0;
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumx+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][0];}}}
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumy+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][1];}}}
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumz+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][2];}}}
        save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0]=sumx;save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1]=sumy;save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2]=sumz;
        data[count]="#s,t,u vertex: "+Integer.toString((int)(s*10)*10)+" "+Integer.toString((int)(t*10)*10)+" "+Integer.toString((int)(u*10)*10)+" "+Float.toString(sumx)+" "+Float.toString(sumy)+" "+Float.toString(sumz);count++;
      if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
      data[count]="#maxdistance: "+Float.toString(max);count++; 
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1.01-s-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(u+t>1){continue;}s=1.01-u-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max; point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(255*sqrt(sqrt(k1)*k1))+50,(int)(0*sqrt(sqrt(k1)*k1))+50,(int)(0*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+u>1){continue;}t=1.01-u-s;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max; point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+t>1){continue;}u=1.01-s-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(u+t>1){continue;}s=1.01-u-t; 
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(s+u>1){continue;}t=1.01-u-s;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGBdata(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);Bpoint3D(sumx,sumy,sumz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3Ddata(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);
      Bline3D(savx,savy,savz,sumx,sumy,sumz);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
     
void example_Bezier_rectdata(){ 
  data[count]="#function name: example_Bezier_rectdata 0 sources";count++;
  checkrc33data(0,-200,-200,-200,-100,-300,0,-200,-200,200);
  checkrc33data(1,100,-100,-200,200,-200,0,100,-100,200);
  checkrc33data(2,200,200,-200,300,100,0,200,200,200);
  Bezier_surface_line_rc33data(255,0,0,size,0.2);Bezier_surface_control_line_rc33data(237,0,255,size);}
  
void example_Bezier_tridata(){
  data[count]="#function name: example_Bezier_rectdata 0 sources";count++;
  checktr33_sampledata();
  Bezier_triangle_line33data(255,0,0,size,0.2);Bezier_triangle_control_line33data(237,0,255,size);}
void example_Bezier_linedata(){data[count]="#function name: example_Bezier_linedata 0 sources";count++;Bezier3Ddata(100,100,100,-100,-100,-100,50,200,-150,1,0);}

void example_Bezier_rect44data(){ 
  data[count]="#function name: example_Bezier_linedata 0 sources";count++;
  checkrc44data(0,123,231,321,241,-123,57,-13,193,200,-147,-100,0);checkrc44data(1,152,-179,-35,294,240,-199,-201,144,-44,208,-98,273);checkrc44data(2,71,-163,258,111,-222,260,109,-10,63,99,-130,91);checkrc44data(3,-100,210,57,-39,-284,95,-68,35,249,-103,-47,38);
  Bezier_surface_line_rc44data(255,0,0,size,0.05);Bezier_surface_control_line_rc44data(255,246,142,size);}

void example_Bezier_rect33data(){ 
  data[count]="#function name: example_Bezier_rect33data 0 sources";count++;
  checkrc33data(0,21,241,-123,57,-13,193,200,-147,-100);checkrc33data(1,-35,294,240,-199,-201,144,-44,208,-96);checkrc33data(2,258,111,-222,260,109,-10,63,99,-130);
  Bezier_surface_line_rc33data(255,0,0,size,0.05);Bezier_surface_control_line_rc33data(255,246,142,size);}

void example_Bezier_tri44data(){
  data[count]="#function name: example_Bezier_tri44data 0 sources";count++;checktr44data();
  Bezier_triangle_line44data(255,0,0,size,0.1);Bezier_triangle_control_line44data(255,246,142,size);}

void example_Bezier_tri33data(){ data[count]="function name: example_Bezier_tri33data 0 sources";count++;checktr33data();
  Bezier_triangle_line33data(0,255,0,size,0.2);Bezier_triangle_control_line33data(255,246,142,size);}

void checkrc44data(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4){   
  data[count]="#function name: checkrc44data 13 sources";count++;
  data[count]="#m: "+Integer.toString(m); count++;
  data[count]="#x1: "+Float.toString(x1); count++;data[count]="#y1: "+Float.toString(y1); count++;data[count]="#z1: "+Float.toString(z1); count++;
  data[count]="#x2: "+Float.toString(x2); count++;data[count]="#y2: "+Float.toString(y2); count++;data[count]="#z2: "+Float.toString(z2); count++;
  data[count]="#x3: "+Float.toString(x3); count++;data[count]="#y3: "+Float.toString(y3); count++;data[count]="#z3: "+Float.toString(z3); count++;
  data[count]="#x4: "+Float.toString(x4); count++;data[count]="#y4: "+Float.toString(y4); count++;data[count]="#z4: "+Float.toString(z4); count++;
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;
  S[m][3][0]=x4;S[m][3][1]=y4;S[m][3][2]=z4;}

void checkrc33data(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3){   
  data[count]="#function name: checkrc33 13 sources";count++;
  data[count]="#m: "+Integer.toString(m); count++;
  data[count]="#x1: "+Float.toString(x1); count++;data[count]="#y1: "+Float.toString(y1); count++;data[count]="#z1: "+Float.toString(z1); count++;
  data[count]="#x2: "+Float.toString(x2); count++;data[count]="#y2: "+Float.toString(y2); count++;data[count]="#z2: "+Float.toString(z2); count++;
  data[count]="#x3: "+Float.toString(x3); count++;data[count]="#y3: "+Float.toString(y3); count++;data[count]="#z3: "+Float.toString(z3); count++;
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;}

void checktdata(int i,int j,int k,float x,float y,float z){
  data[count]="#function name: checkt 6 sources";count++;
  data[count]="#i: "+Integer.toString(i); count++;data[count]="#j: "+Integer.toString(j); count++;data[count]="#k: "+Integer.toString(k); count++;
  data[count]="#x: "+Float.toString(x); count++;data[count]="#y: "+Float.toString(y); count++;data[count]="#z: "+Float.toString(z); count++;
  T[i][j][k][0]=x;T[i][j][k][1]=y;T[i][j][k][2]=z;}

void check3Ddata(float x,float y,float z,float siz){if(siz==0){siz=size;}
  data[count]="#function name: check3D 4 sources";count++;
  data[count]="#x: "+Float.toString(x); count++;data[count]="#y: "+Float.toString(y); count++;data[count]="#z: "+Float.toString(z); count++;
  data[count]="#siz: "+Float.toString(siz); count++;
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;}
  
void checktr44data(){
  data[count]="#function name: checktr44 0 sources";count++;
                                        checktdata(3,0,0,100,100,100);
                           checktdata(2,1,0,50,75,125);checktdata(2,0,1,75,-75,50);
               checktdata(1,2,0,104,115,92);checktdata(1,1,1,4,-104,93);checktdata(1,0,2,-231,-131,31);
  checktdata(0,3,0,-100,0,-30);checktdata(0,2,1,-60,-30,-130);checktdata(0,1,2,-30,130,-50);checktdata(0,0,3,104,-90,-100);}

void checktr33data(){
  data[count]="#function name: checktr33 0 sources";count++;
                                        checktdata(2,0,0,100,100,100);
                           checktdata(1,1,0,50,75,125);checktdata(1,0,1,75,-75,50);
               checktdata(0,2,0,104,115,92);checktdata(0,1,1,100,-104,93);checktdata(0,0,2,-231,-131,31);}

void checktr33_sampledata(){
  data[count]="#function name: checktr33_sample 0 sources";count++;
                                        checktdata(2,0,0,-200,-200,200);
                           checktdata(1,1,0,200,0,200);checktdata(1,0,1,0,200,200);
               checktdata(0,2,0,200,-200,-200);checktdata(0,1,1,200,200,0);checktdata(0,0,2,-200,200,-200);}

void point3Ddata(float x,float y,float z,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);
  //data[count]="#function name: point3D 4 sources";count++;
  data[count]="v: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(siz); count++;
  data2[count2]="v: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(siz); count2++;
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  fill(0);stroke(0);strokeWeight(5);}
  
void point3Dcvdata(float x,float y,float z,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);
  //data[count]="#function name: point3Dcv 4 sources";count++;
  data[count]="#cv: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(siz); count++;
  data2[count2]="#cv: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(siz); count2++;
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  fill(0);stroke(0);strokeWeight(5);}
  
void point3D_RGBdata(float x,float y,float z,float R,float G,float B,float st,float siz){if(siz==0){siz=size;}
  //data[count]="#function name: point3DRGB 8 sources";count++;
  data[count]="RGBv: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(R)+" "+Float.toString(G)+" "+Float.toString(B)+" "+Float.toString(st)+" "+Float.toString(siz); count++;
  data2[count2]="RGBv: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(R)+" "+Float.toString(G)+" "+Float.toString(B)+" "+Float.toString(st)+" "+Float.toString(siz); count2++;
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  stroke(0);strokeWeight(5);}
  
void line3Ddata(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight){if(siz==0){siz=size;}
  //data[count]="#function name: line3D 11 sources";count++;
  data[count]="line: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(w)+" "+Float.toString(m)+" "+Float.toString(n)+" "+Float.toString(siz)+" "+Float.toString(R)+" "+Float.toString(G)+" "+Float.toString(B)+" "+Float.toString(strokeweight); count++;
  data2[count2]="line: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(w)+" "+Float.toString(m)+" "+Float.toString(n)+" "+Float.toString(siz)+" "+Float.toString(R)+" "+Float.toString(G)+" "+Float.toString(B)+" "+Float.toString(strokeweight); count2++;
  A[2]=x*cos(radians(ceta))-z*sin(radians(ceta));A[2]=A[2]*siz;
  A[3]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[3]=A[3]*siz;
  A[4]=w*cos(radians(ceta))-n*sin(radians(ceta));A[4]=A[4]*siz;
  A[5]=m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi));A[5]=A[5]*siz;
  stroke(0);strokeWeight(5);}
  
void Cuboiddata(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight){if(siz==0){siz=size;}
  //data[count]="#function name: Cuboid 9 sources";count++;
  data[count]="#cuboid: "+Float.toString(x0)+" "+Float.toString(y0)+" "+Float.toString(z0)+" "+Float.toString(dr)+" "+Integer.toString(R)+" "+Integer.toString(G)+" "+Integer.toString(B)+" "+Float.toString(siz)+" "+Float.toString(strokeweight); count++;
  data[count]="#center: ";count++;
   point3D_RGBdata(x0,y0,z0,255,0,207,8,siz);count2--;
  data[count]="#sides: ";count++;
   point3D_RGBdata(x0+dr,y0+dr,z0+dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0+dr,y0+dr,z0-dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0+dr,y0-dr,z0+dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0-dr,y0+dr,z0+dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0-dr,y0-dr,z0+dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0+dr,y0-dr,z0-dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0-dr,y0+dr,z0-dr,0,0,255,8,siz);count2--;
   point3D_RGBdata(x0-dr,y0-dr,z0-dr,0,0,255,8,siz);count2--;
   line3Ddata(x0+dr,y0+dr,z0+dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0+dr,y0+dr,z0+dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0+dr,y0+dr,z0+dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0-dr,z0+dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0-dr,z0+dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0+dr,z0-dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0+dr,z0-dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0+dr,y0-dr,z0-dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0+dr,y0-dr,z0-dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0-dr,z0-dr,x0+dr,y0-dr,z0-dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0-dr,z0-dr,x0-dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);count2--;
   line3Ddata(x0-dr,y0-dr,z0-dr,x0-dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);count2--;}
   
void spere3Ddata(float x,float y,float z,float R,float G,float B,float dr,float st,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);fill(R,G,B);
  //data[count]="#function name: spere3D 9 sources";count++;
  data[count]="#spere: "+Float.toString(x)+" "+Float.toString(y)+" "+Float.toString(z)+" "+Float.toString(R)+" "+Float.toString(G)+" "+Float.toString(B)+" "+Float.toString(dr)+" "+Float.toString(st)+" "+Float.toString(siz); count++;
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  fill(0);stroke(0);strokeWeight(5);}
  
void Bfill(float rangeminx, float rangemaxx, float rangeminy, float rangemaxy, float rangeminz, float rangemaxz) {
    float centerx=(rangeminx+rangemaxx)/2, centery=(rangeminy+rangemaxy)/2, centerz=(rangeminz+rangemaxz)/2;
    for (int i=0; i<=Bst.arraysize(); i++) {
    if (Bst.ix(i)<rangeminx || Bst.iz(i)>rangemaxx || Bst.iy(i)<rangeminy || Bst.iy(i)>rangemaxy || Bst.iz(i)<rangeminz || Bst.iz(i)>rangemaxz) {continue;}  //rangeout
    else if (abs(Bst.ix(i)-centerx)<=1 && abs(Bst.iy(i)-centery)<=1 && abs(Bst.iz(i)-centerz)<=1) {continue;} 
    else {Bstrange.push(Bst.ix(i), Bst.iy(i), Bst.iz(i));}}return;}
  
void Bpoint3D(float x,float y,float z) {Bst.push(x, y, z);return;}

void Bline3D(float x, float y, float z, float w, float m, float n) {
    float dx,dy,dz; dx=(w-x)/1000;dy=(m-y)/1000;dz=(n-z)/1000;
    for (int i=0; i<=1000; i++) {Bpoint3D(x, y, z);x+=dx;y+=dy;z+=dz;}
    return;}

void Bpointspe(float r,float angle1,float angle2) {
   float x,y,z;
   x=r*cos(radians(angle1))*cos(radians(angle2));
   y=r*cos(radians(angle1))*sin(radians(angle2));
   z=r*sin(radians(angle1));Bst.push(x, y, z);return;}

void Blinespe(float r1,float angle1,float angle2,float r2,float angle3,float angle4) {  
   float x,y,z,w,m,n;
   x=r1*cos(radians(angle1))*cos(radians(angle2));
   y=r1*cos(radians(angle1))*sin(radians(angle2));
   z=r1*sin(radians(angle1));
   w=r2*cos(radians(angle3))*cos(radians(angle4));
   m=r2*cos(radians(angle3))*sin(radians(angle4));
   n=r2*sin(radians(angle3));
  float dx,dy,dz; dx=(w-x)/1000;dy=(m-y)/1000;dz=(n-z)/1000;
  for (int i=0; i<=1000; i++) {Bpoint3D(x, y, z);x+=dx;y+=dy;z+=dz;}return;}

void Bpointcir(float r,float angle1,float z) {
   float x,y;
   x=r*cos(radians(angle1));
   y=r*sin(radians(angle1));
   Bst.push(x, y, z);return;}

void Blinecir(float r1,float angle1,float z1,float r2,float angle2,float z2) { 
   float x,y,z,w,m,n;
   x=r1*cos(radians(angle1));y=r1*sin(radians(angle1)); z=z1;
   w=r2*cos(radians(angle2));m=r2*sin(radians(angle2));n=z2;
  float dx,dy,dz; dx=(w-x)/1000;dy=(m-y)/1000;dz=(n-z)/1000;
  for (int i=0; i<=1000; i++) {Bpoint3D(x, y, z);x+=dx;y+=dy;z+=dz;}return;}
  void point3D(float x,float y,float z,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  strokeWeight(5);point(950+A[0],400+A[1]);fill(0);stroke(0);strokeWeight(5);}
  
void point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz){if(siz==0){siz=size;}
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  strokeWeight(st);stroke(R,G,B);point(950+A[0],400+A[1]);stroke(0);strokeWeight(5);}
  
void line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight){if(siz==0){siz=size;}
  A[2]=x*cos(radians(ceta))-z*sin(radians(ceta));A[2]=A[2]*siz;
  A[3]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[3]=A[3]*siz;
  A[4]=w*cos(radians(ceta))-n*sin(radians(ceta));A[4]=A[4]*siz;
  A[5]=m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi));A[5]=A[5]*siz;
  strokeWeight(strokeweight);stroke(R,G,B);line(950+A[2],400+A[3],950+A[4],400+A[5]);stroke(0);strokeWeight(5);}
  
void checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4){   
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;
  S[m][3][0]=x4;S[m][3][1]=y4;S[m][3][2]=z4;}
  
void checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3){   
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;}
  
void checkt(int i,int j,int k,float x,float y,float z){T[i][j][k][0]=x;T[i][j][k][1]=y;T[i][j][k][2]=z;}

void check3D(float x,float y,float z,float siz){if(siz==0){siz=size;}
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;}
  
void Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight){if(siz==0){siz=size;}point3D_RGB(x0,y0,z0,255,0,207,8,siz);
   point3D_RGB(x0+dr,y0+dr,z0+dr,0,0,255,8,siz);point3D_RGB(x0+dr,y0+dr,z0-dr,0,0,255,8,siz);point3D_RGB(x0+dr,y0-dr,z0+dr,0,0,255,8,siz);point3D_RGB(x0-dr,y0+dr,z0+dr,0,0,255,8,siz);
   point3D_RGB(x0-dr,y0-dr,z0+dr,0,0,255,8,siz);point3D_RGB(x0+dr,y0-dr,z0-dr,0,0,255,8,siz);point3D_RGB(x0-dr,y0+dr,z0-dr,0,0,255,8,siz);point3D_RGB(x0-dr,y0-dr,z0-dr,0,0,255,8,siz);
   line3D(x0+dr,y0+dr,z0+dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);line3D(x0+dr,y0+dr,z0+dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);
   line3D(x0+dr,y0+dr,z0+dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);line3D(x0-dr,y0-dr,z0+dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);
   line3D(x0-dr,y0-dr,z0+dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);line3D(x0-dr,y0+dr,z0-dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);
   line3D(x0-dr,y0+dr,z0-dr,x0-dr,y0+dr,z0+dr,siz,R,G,B,strokeweight);line3D(x0+dr,y0-dr,z0-dr,x0+dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);
   line3D(x0+dr,y0-dr,z0-dr,x0+dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);line3D(x0-dr,y0-dr,z0-dr,x0+dr,y0-dr,z0-dr,siz,R,G,B,strokeweight);
   line3D(x0-dr,y0-dr,z0-dr,x0-dr,y0+dr,z0-dr,siz,R,G,B,strokeweight);line3D(x0-dr,y0-dr,z0-dr,x0-dr,y0-dr,z0+dr,siz,R,G,B,strokeweight);}
   
void spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);fill(R,G,B);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  strokeWeight(st);ellipse(950+A[0],400+A[1],dr,dr);fill(0);stroke(0);strokeWeight(5);}
  
void Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz){if(siz==0){siz=size;}
  strokeWeight(5);stroke(#08FF16);fill(255);textSize(20);float z,w,k,t=0;stroke(255);
  for(t=0;t<=1;t+=0.005){z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;k=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;point3D_RGB(z,w,k,255,0,0,5,siz);}
  fill(0,255,0);point3D(x0,y0,z0,siz);check3D(x0+10,y0-20,z0-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P0_",950+A[0],400+A[1]);text((int)num,950+A[0]+35,400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x1,y1,z1,siz);check3D(x1+10,y1-20,z1-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P1_",950+A[0],400+A[1]);text((int)num,950+A[0]+35,400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x2,y2,z2,siz);check3D(x2+10,y2-20,z2-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P2_",950+A[0],400+A[1]);text((int)num,950+A[0]+35,400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  stroke(0);fill(0);}
  
void Bezier_surface_control_line_rc44(float R,float G,float B,float siz){if(siz==0){siz=size;}
    for(int i=0;i<4;i++) {for(int j=1;j<4;j++) {line3D(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<4;j++) {for(int i=1;i<4;i++) {line3D(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}}
    
void Bezier_surface_control_line_rc33(float R,float G,float B,float siz){if(siz==0){siz=size;}
    for(int i=0;i<3;i++) {for(int j=1;j<3;j++) {line3D(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<3;j++) {for(int i=1;i<3;i++) {line3D(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}}
    
void Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  //fill(255);textSize(20);text("scale=sqrt(sqrt(k)*k)",413,70);
  int i,j;float u,v,max=0;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1;u+=gap){for(v=0;v<=1;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumx+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][0];}}
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumy+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][1];}}
      for(i=0;i<4;i++){for(j=0;j<4;j++){sumz+=com[3][i]*com[3][j]*power(u,i)*power(v,j)*power(1-u,3-i)*power(1-v,3-j)*S[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;
      if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
   for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;
    for(v=0;v<=1;v+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,5,siz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
   for(v=0;v<=1;v+=gap){float savx=0,savy=0,savz=0;
    for(u=0;u<=1;u+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      k=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k)*k))+50,(int)(G*sqrt(sqrt(k)*k))+50,(int)(B*sqrt(sqrt(k)*k))+50,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
        
void Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  int i,j;float u,v;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1.001;u+=gap){for(v=0;v<=1.001;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumx+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][0];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumy+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][1];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumz+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;}}
   for(u=0;u<=1.001;u+=gap){float savx=0,savy=0,savz=0;
    for(v=0;v<=1.001;v+=gap){float sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      point3D_RGB(sumx,sumy,sumz,R,G,B,5,siz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,R,G,B,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
   for(v=0;v<=1.001;v+=gap){float savx=0,savy=0,savz=0;
    for(u=0;u<=1.001;u+=gap){float sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,R,G,B,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
        
void Bezier_triangle_control_line44(float R,float G,float B,float siz){int i,j,k;if(siz==0){siz=size;}
  for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=2){k=3-i-j;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i][j+1][k-1][0],T[i][j+1][k-1][1],T[i][j+1][k-1][2],siz,R,G,B,1);}}}
  for(j=0;j<=3;j++){for(k=0;k<=3;k++){if(k+j<=2){i=3-k-j;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i-1][j][k+1][0],T[i-1][j][k+1][1],T[i-1][j][k+1][2],siz,R,G,B,1);}}}
  for(k=0;k<=3;k++){for(i=0;i<=3;i++){if(i+k<=2){j=3-i-k;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i+1][j-1][k][0],T[i+1][j-1][k][1],T[i+1][j-1][k][2],siz,R,G,B,1);}}}}
  
void Bezier_triangle_line44(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  int i,j,k;float s,t,u,max=0;float[][][][] save=new float[105][105][105][3];
  for(s=0;s<=1;s+=gap){for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1-s-t;float sumx=0,sumy=0,sumz=0;
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumx+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][0];}}}
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumy+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][1];}}}
        for(i=0;i<=3;i++){for(j=0;j<=3;j++){if(i+j<=3){k=3-i-j;sumz+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][2];}}}
        save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0]=sumx;save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1]=sumy;save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2]=sumz;
        if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1-s-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(u+t>1){continue;}s=1-u-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+u>1){continue;}t=1-u-s;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+t>1){continue;}u=1-s-t;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(u+t>1){continue;}s=1-u-t; 
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(s+u>1){continue;}t=1-u-s;
        float k1,sumx=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][0],sumy=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][1],sumz=save[(int)(s*100)][(int)(t*100)][(int)(u*100)][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;
        point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}    

void Bezier_triangle_control_line33(float R,float G,float B,float siz){int i,j,k;if(siz==0){siz=size;}
  for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=1){k=2-i-j;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i][j+1][k-1][0],T[i][j+1][k-1][1],T[i][j+1][k-1][2],siz,R,G,B,1);}}}
  for(j=0;j<=2;j++){for(k=0;k<=2;k++){if(k+j<=1){i=2-k-j;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i-1][j][k+1][0],T[i-1][j][k+1][1],T[i-1][j][k+1][2],siz,R,G,B,1);}}}
  for(k=0;k<=2;k++){for(i=0;i<=2;i++){if(i+k<=1){j=2-i-k;line3D(T[i][j][k][0],T[i][j][k][1],T[i][j][k][2],T[i+1][j-1][k][0],T[i+1][j-1][k][1],T[i+1][j-1][k][2],siz,R,G,B,1);}}}}

void Bezier_triangle_line33(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  int i,j,k;float s,t,u,max=0;float[][][][] save2=new float[105][105][105][3];
  for(s=0;s<=1;s+=gap){for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1.01-s-t;float sumx=0,sumy=0,sumz=0;
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumx+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][0];}}}
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumy+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][1];}}}
        for(i=0;i<=2;i++){for(j=0;j<=2;j++){if(i+j<=2){k=2-i-j;sumz+=com2[i][j][k]*power(s,i)*power(t,j)*power(u,k)*T[i][j][k][2];}}}
        save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0]=sumx;save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1]=sumy;save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2]=sumz;
        if(max*max<sumx*sumx+sumy*sumy+sumz*sumz){max=sqrt(sumx*sumx+sumy*sumy+sumz*sumz);}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(s+t>1){continue;}u=1.01-s-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(u+t>1){continue;}s=1.01-u-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max; point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(255*sqrt(sqrt(k1)*k1))+50,(int)(0*sqrt(sqrt(k1)*k1))+50,(int)(0*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+u>1){continue;}t=1.01-u-s;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max; point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(t=0;t<=1;t+=gap){float savx=0,savy=0,savz=0;for(s=0;s<=1;s+=gap){if(s+t>1){continue;}u=1.01-s-t;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(s==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(u=0;u<=1;u+=gap){float savx=0,savy=0,savz=0;for(t=0;t<=1;t+=gap){if(u+t>1){continue;}s=1.01-u-t; 
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(t==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
  for(s=0;s<=1;s+=gap){float savx=0,savy=0,savz=0;for(u=0;u<=1;u+=gap){if(s+u>1){continue;}t=1.01-u-s;
        float k1,sumx=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][0],sumy=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][1],sumz=save2[(int)(s*10)*10][(int)(t*10)*10][(int)(u*10)*10][2];
        k1=sqrt(sumx*sumx+sumy*sumy+sumz*sumz)/max;point3D_RGB(sumx,sumy,sumz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,5,siz);
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,(int)(R*sqrt(sqrt(k1)*k1))+50,(int)(G*sqrt(sqrt(k1)*k1))+50,(int)(B*sqrt(sqrt(k1)*k1))+50,3);savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
      
void pointcir_RGB(float r,float angle1,float z,float R,float G,float B,float st,float siz){
   float x,y;
   x=r*cos(radians(angle1));
   y=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(st);stroke(R,G,B);point(950+A[0],400+A[1]);stroke(0);strokeWeight(5);}
   
void linecir(float r1,float angle1,float z1,float r2,float angle2,float z2,float siz,float R,float G,float B,float strokeweight){
  float x,y,z,w,m,n;
   x=r1*cos(radians(angle1));y=r1*sin(radians(angle1));z=z1;
   w=r2*cos(radians(angle2));m=r2*sin(radians(angle2));n=z2;
   A[2]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[3]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   A[4]=(w*cos(radians(ceta))-n*sin(radians(ceta)))*siz;
   A[5]=(m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(strokeweight);stroke(R,G,B);line(950+A[2],400+A[3],950+A[4],400+A[5]);stroke(0);strokeWeight(5);}
   
void checkcir(float r,float angle1,float z,float siz){
   float x,y;
   x=r*cos(radians(angle1));y=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;}
   
void pointspe_RGB(float r,float angle1,float angle2,float R,float G,float B,float st,float siz){
   float x,y,z;
   x=r*cos(radians(angle1))*cos(radians(angle2));
   y=r*cos(radians(angle1))*sin(radians(angle2));
   z=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(st);stroke(R,G,B);point(950+A[0],400+A[1]);stroke(0);strokeWeight(5);}
   
void linespe(float r1,float angle1,float angle2,float r2,float angle3,float angle4,float siz,float R,float G,float B,float strokeweight){
  float x,y,z,w,m,n;
   x=r1*cos(radians(angle1))*cos(radians(angle2));
   y=r1*cos(radians(angle1))*sin(radians(angle2));
   z=r1*sin(radians(angle1));
   w=r2*cos(radians(angle3))*cos(radians(angle4));
   m=r2*cos(radians(angle3))*sin(radians(angle4));
   n=r2*sin(radians(angle3));
   A[2]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[3]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   A[4]=(w*cos(radians(ceta))-n*sin(radians(ceta)))*siz;
   A[5]=(m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(strokeweight);stroke(R,G,B);line(950+A[2],400+A[3],950+A[4],400+A[5]);stroke(0);strokeWeight(5);}
   
void checkspe(float r,float angle1,float angle2,float siz){
   float x,y,z;
   x=r*cos(radians(angle1))*cos(radians(angle2));
   y=r*cos(radians(angle1))*sin(radians(angle2));
   z=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;}
   void keyPressed(){
  if(windowup==7){ //itis==0 nothing itis==1 found itis==2 typing
  if((key!=DELETE)&&(key!=ENTER)&&(key!=BACKSPACE)){itis=2;if(searchlength>=40){}else{str=str+key;searchlength++;}}
  else if(key==DELETE){itis=2;str="";searchlength=0;}
  else if(key==ENTER){itis=1;istrue();str="";searchlength=0;}
  else if(key==BACKSPACE){if(str.length()!=0)str=str.substring(0,str.length()-1);}}
  if(windowup==5){if(Xcodelength<1){Xcodelength=1;}
  if(key==TAB){for(int i=0;i<=20;i++){win5[i]="";Xcodelength=1;}consolcheck=0;}
  else if(key==BACKSPACE){if(win5[Xcodelength].length()!=0)win5[Xcodelength]=win5[Xcodelength].substring(0,win5[Xcodelength].length()-1);}
  else if(key==DELETE){win5[Xcodelength]="";}
  else if(keyCode==UP){Xcodelength--;}
  else if(((key==ENTER)||(keyCode==DOWN))&&(Xcodelength<=19)){Xcodelength++;}
  else{if(key!=CODED){win5[Xcodelength]=win5[Xcodelength]+key;}}}}
  
void showstring(float x,float y){
  if(searchlength>=40){fill(255,0,0);textSize(20);text("max length!",930,110);}textSize(30);fill(0);text(str,x,y);
  if(itis==1){textSize(20); fill(0,255,0);text("Founded!",275,230); fill(0);text(ans,275,260);}
  else if(itis==0){textSize(20); fill(255,0,0);text("Not Founded!",275,230); fill(0);}}
  
void istrue(){//println(str);
  if(str.equals("bezier3d")==true){ans="Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)";itis=1;}
  else if(str.equals("beziersurfacecontrollinerc44")==true){ans="Bezier_surface_control_line_rc44(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziersurfacelinerc44")==true){ans="Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziersurfacecontrollinerc33")==true){ans="Bezier_surface_control_line_rc33(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziersurfacelinerc33")==true){ans="Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziertrianglecontrolline44")==true){ans="Bezier_triangle_control_line44(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziertriangleline44")==true){ans="Bezier_triangle_line44(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziertrianglecontrolline33")==true){ans="Bezier_triangle_control_line33(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziertriangleline33")==true){ans="Bezier_triangle_line33(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("checkrc44")==true){ans="checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)";itis=1;}
  else if(str.equals("checkrc33")==true){ans="checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)";itis=1;}
  else if(str.equals("checkt")==true){ans="checkt(int i,int j,int k,float x,float y,float z)";itis=1;}
  else if(str.equals("check3d")==true){ans="check3D(float x,float y,float z,float siz)";itis=1;}
  else if(str.equals("point3d")==true){ans="point3D(float x,float y,float z,float siz)";itis=1;}
  else if(str.equals("point3drgb")==true){ans="point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)";itis=1;}
  else if(str.equals("line3d")==true){ans="line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)";itis=1;}
  else if(str.equals("cuboid")==true){ans="Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)";itis=1;}
  else if(str.equals("spere")==true){ans="spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)";itis=1;}
  else{itis=0;}}
  
void showstring2(float x,float y){
  float z=y;if(Xcodelength==0){Xcodelength=1;}
  textSize(20);fill(0);text("lines=",150,40);fill(0);text(Xcodelength,210,40);text("NO SHIFT   go back -> TAB",350,40);
  if(Xcodelength>=20){Xcodelength=20;textSize(30);fill(255,0,0);text("OVERFLOW",160,685);fill(0);textSize(20);}
  for(int i=1;i<21;i++){strokeWeight(0.1);
    if(i==Xcodelength){fill(255,0,0);stroke(255,0,0);fill(175);stroke(125);rect(150,50+30*(i-1),1300,30);fill(255,0,0);stroke(255,0,0);}
    else{fill(0);stroke(0);fill(255);fill(255);rect(150,50+30*(i-1),1300,30);fill(0);stroke(0);}
    strokeWeight(5);text(i,x-45,z-5);z+=30;}
   for(int i=1;i<21;i++){textSize(25);fill(0);stroke(0);text(win5[i],x,y);y+=30;}}

void console(){
  for(int i=0;i<5;i++){println(" ");}
  println("consolestart",consoletempt);consoletempt++;
  for(int i=1;i<10000;i++){
  if(search(i)==1){println("search",i,"checked!");}
  else{println("search",i,"failed!!!");return;}}println("consol   end");consolcheck=1;return;}
  
int search(int k){
      String make="";
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){
      println("Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)");
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){println(makestr[i]);}}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){println("Bezier_surface_control_line_rc44(float R,float G,float B,float siz)");
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){println("Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){println("Bezier_surface_control_line_rc33(float R,float G,float B,float siz)");
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){println("Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){println("Bezier_triangle_control_line44(float R,float G,float B,float siz)");
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){println("Bezier_triangle_line44(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){println("Bezier_triangle_control_line33(float R,float G,float B,float siz)");
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){println("Bezier_triangle_line33(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){println("checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)");
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<13;i++){println(makestr[i]);}}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){println("checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)");
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<10;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){println("checkt(int i,int j,int k,float x,float y,float z)");
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<6;i++){println(makestr[i]);}}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){/*example_Bezier_rect()*/println("example_Bezier_rect()");}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){/*example_Bezier_tri()*/println("example_Bezier_tri()");}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){/*example_Bezier_line()*/println("example_Bezier_line()");}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){println("check3D(float x,float y,float z,float siz)");
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){println("point3D(float x,float y,float z,float siz)");String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){println("point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)");
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<8;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){println("line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)");
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){println("Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)");
      make=win5[k].substring(7,win5[k].length()-1);
      String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){println(makestr[i]);}}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){println("spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)");
      make=win5[k].substring(6,win5[k].length()-1);
      String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){println(makestr[i]);}}return 1;}
      
void consoledraw(){
  for(int k=1;k<10000;k++){ 
     String make="";float[] makefloat = new float[100];
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){//"Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)"
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}for(int i=10;i<11;i++){makefloat[i]=inttry(makestr[i]);}
      Bezier3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){//"Bezier_surface_control_line_rc44(float R,float G,float B,float siz)"
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc44(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){//"Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc44(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){//"Bezier_surface_control_line_rc33(float R,float G,float B,float siz)"
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc33(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){//"Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc33(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){//"Bezier_triangle_control_line44(float R,float G,float B,float siz)"
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line44(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);} 
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){//"Bezier_triangle_line44(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line44(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){//"Bezier_triangle_control_line33(float R,float G,float B,float siz)"
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line33(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){//"Bezier_triangle_line33(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line33(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){//"checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)"
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<13;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc44((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10],makefloat[11],makefloat[12]);}
       else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){//"checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)"
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<10;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc33((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){//"checkt(int i,int j,int k,float x,float y,float z)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<3;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=3;i<6;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkt((int)makefloat[0],(int)makefloat[1],(int)makefloat[2],makefloat[3],makefloat[4],makefloat[5]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){//"check3D(float x,float y,float z,float siz)"
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      check3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){//"point3D(float x,float y,float z,float siz)"
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=1;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){//"point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)"
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<8;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D_RGB(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){//"line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      line3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){//"Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      for(int i=4;i<7;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=7;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Cuboid(makefloat[0],makefloat[1],makefloat[2],makefloat[3],(int)makefloat[4],(int)makefloat[5],(int)makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){//"spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)"
      make=win5[k].substring(6,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}spere3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){/*example_Bezier_rect()*/example_Bezier_rect();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){/*example_Bezier_tri()*/example_Bezier_tri();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){/*example_Bezier_line()*/example_Bezier_line();}}
  }
  
void consoledraw2(){
  data[count]="#bezier vertex file #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
  data2[count2]="#error find file #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
  count++;count2++;
  for(int k=1;k<10000;k++){ String make="";float[] makefloat = new float[100];
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}for(int i=10;i<11;i++){makefloat[i]=inttry(makestr[i]);}
      Bezier3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);} 
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<13;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc44data((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10],makefloat[11],makefloat[12]);}
       else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<10;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc33data((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<3;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=3;i<6;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checktdata((int)makefloat[0],(int)makefloat[1],(int)makefloat[2],makefloat[3],makefloat[4],makefloat[5]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      check3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=1;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<8;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D_RGBdata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<11;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      line3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      for(int i=4;i<7;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=7;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Cuboiddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],(int)makefloat[4],(int)makefloat[5],(int)makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){
      make=win5[k].substring(6,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}spere3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){example_Bezier_rectdata();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){example_Bezier_tridata();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){example_Bezier_linedata();}}
      data[count]="#length: "+Integer.toString(count);count++;
      for(int i=count;i<10000000;i++){data[i]="";}
      saveStrings("data\\bvffile.txt",data);
      data2[count2]="length: "+Integer.toString(count2);count2++;
      for(int i=count2;i<1000000;i++){data2[i]="";}
      saveStrings("data\\vertex.txt",data2);}
      
void showstring3(){
      stroke(0);fill(0);
      textSize(20);text("progress",150,125);
      for(int i=0;i<win4length;i++){
      textSize(20);
      text(win4[i],175,180+i*30);}}
  
void win4clear(){
  for(int i=0;i<win4length;i++){win4[i]="";}
  win4length=0;}

void win4push(String t){
  win4[win4length]=t;
  win4length++;}
  void parseFile() {BufferedReader reader = createReader("data\\textfile\\sphere.obj");String line = null;String a=null;
      try {while ((line = reader.readLine()) != null) {String[] pieces=split(line,' ');
      if(pieces[0].equals("v")==true){obj[row][0]=Siz*float(pieces[2]);obj[row][1]=Siz*float(pieces[4]);obj[row][2]=Siz*float(pieces[3]); //sphere obj[row][1],obj[row][2] change
      if(obj[row][2]-az<zmn){zmn=obj[row][2]-az;}if(obj[row][2]-az>zmx){zmx=obj[row][2]-az;}row++;}
      if(pieces[0].equals("vn")==true){vervec[rown][0]=10*float(pieces[1]);vervec[rown][1]=10*float(pieces[2]);vervec[rown][2]=10*float(pieces[3]);rown++;}
      if(pieces[0].equals("f")==true){for(int i=1;i<5;i++){a=pieces[i];String[] pieces2=split(a,'/');//v vt vn
         index[rowf][i-1][0]=int(pieces2[0]);index[rowf][i-1][1]=int(pieces2[1]);index[rowf][i-1][2]=int(pieces2[2]);}
        rowf++;}}reader.close();} catch (IOException e) {e.printStackTrace();}}
        
void parseFile2() {BufferedReader reader = createReader("data\\textfile\\heartmtl.mtl");String line = null;
    try {while ((line = reader.readLine()) != null) {String pieces2=trim(line);
      String[] pieces=split(pieces2,' ');//println(line);
      if(pieces[0].equals("Ns")==true){Ns=float(pieces[1]);}
      if(pieces[0].equals("Ni")==true){Ni=float(pieces[1]);}
      if(pieces[0].equals("d")==true){d=float(pieces[1]);}
      if(pieces[0].equals("Tr")==true){Tr=float(pieces[1]);}
      if(pieces[0].equals("illum")==true){illum=float(pieces[1]);}
      if(pieces[0].equals("Tf")==true){Tf[0]=float(pieces[1]);Tf[1]=float(pieces[2]);Tf[2]=float(pieces[3]);}
      if(pieces[0].equals("Ka")==true){Ka[0]=float(pieces[1]);Ka[1]=float(pieces[2]);Ka[2]=float(pieces[3]);}
      if(pieces[0].equals("Kd")==true){Kd[0]=float(pieces[1]);Kd[1]=float(pieces[2]);Kd[2]=float(pieces[3]);}
      if(pieces[0].equals("Ks")==true){Ks[0]=float(pieces[1]);Ks[1]=float(pieces[2]);Ks[2]=float(pieces[3]);}
      if(pieces[0].equals("Ke")==true){Ke[0]=float(pieces[1]);Ke[1]=float(pieces[2]);Ke[2]=float(pieces[3]);}
    }reader.close();} catch (IOException e) {e.printStackTrace();}}
    
int parseFile3(){
  BufferedReader reader = createReader("data\\objretrieve\\bvffileex.txt");String line = null;
 try {while ((line = reader.readLine()) != null) {
 if((line.length()>=1)&&(line.substring(0,1)).equals("#")){continue;}
 else if(line.length()==0){return 1;}else{
   if((line.length()>=3)&&(line.substring(0,3)).equals("v: ")){
      String line2=line.substring(3,line.length());String[] list=split(line2,' ');
      Bpoint3D(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]));
      point3D(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]),floattry2(list[3]));}
   else if((line.length()>=6)&&(line.substring(0,6)).equals("RGBv: ")){
      String line2=line.substring(6,line.length());String[] list=split(line2,' ');
      Bpoint3D(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]));
      point3D_RGB(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]),floattry2(list[3]),floattry2(list[4]),floattry2(list[5]),floattry2(list[6]),floattry2(list[7]));}
   else if((line.length()>=6)&&(line.substring(0,6)).equals("line: ")){
      String line2=line.substring(6,line.length());String[] list=split(line2,' ');
      Bline3D(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]),floattry2(list[3]),floattry2(list[4]),floattry2(list[5]));
      line3D(floattry2(list[0]),floattry2(list[1]),floattry2(list[2]),floattry2(list[3]),floattry2(list[4]),floattry2(list[5]),floattry2(list[6]),floattry2(list[7]),floattry2(list[8]),floattry2(list[9]),floattry2(list[10]));}
   else{continue;}}}reader.close();}
 catch (IOException e) {e.printStackTrace();}return 1;}
 
void objshow(){ 
  for(int i=0;i<rowf;i++){
     float vnx1=vervec[index[i][0][2]][0],vny1=vervec[index[i][0][2]][1],vnz1=vervec[index[i][0][2]][2];
     float vnx2=vervec[index[i][1][2]][0],vny2=vervec[index[i][1][2]][1],vnz2=vervec[index[i][1][2]][2];
     float vnx3=vervec[index[i][2][2]][0],vny3=vervec[index[i][2][2]][1],vnz3=vervec[index[i][2][2]][2];
     float vnx4=vervec[index[i][3][2]][0],vny4=vervec[index[i][3][2]][1],vnz4=vervec[index[i][3][2]][2];
     float x1=obj[index[i][0][0]][0],y1=obj[index[i][0][0]][1],z1=obj[index[i][0][0]][2];//float distance1=sqrt(x1*x1+y1*y1+z1*z1);
     float x2=obj[index[i][1][0]][0],y2=obj[index[i][1][0]][1],z2=obj[index[i][1][0]][2];//float distance2=sqrt(x2*x2+y2*y2+z2*z2);
     float x3=obj[index[i][2][0]][0],y3=obj[index[i][2][0]][1],z3=obj[index[i][2][0]][2];//float distance3=sqrt(x3*x3+y3*y3+z3*z3);
     float x4=obj[index[i][3][0]][0],y4=obj[index[i][3][0]][1],z4=obj[index[i][3][0]][2];//float distance4=sqrt(x4*x4+y4*y4+z4*z4);
     //float[] Ka=new float [5];float[] Kd=new float [5];//float lightx=128,lighty=128,lightz=128,RMaterial=128,GMaterial=128,BMaterial=128;
     float lightvecx1=lightx-x1,lightvecy1=lighty-y1,lightvecz1=lightz-z1,length1=sqrt(lightvecx1*lightvecx1+lightvecy1*lightvecy1+lightvecz1*lightvecz1);
     float lightvecx2=lightx-x2,lightvecy2=lighty-y2,lightvecz2=lightz-z2,length2=sqrt(lightvecx2*lightvecx2+lightvecy2*lightvecy2+lightvecz2*lightvecz2);
     float lightvecx3=lightx-x3,lightvecy3=lighty-y3,lightvecz3=lightz-z3,length3=sqrt(lightvecx3*lightvecx3+lightvecy3*lightvecy3+lightvecz3*lightvecz3);
     float lightvecx4=lightx-x4,lightvecy4=lighty-y4,lightvecz4=lightz-z4,length4=sqrt(lightvecx4*lightvecx4+lightvecy4*lightvecy4+lightvecz4*lightvecz4);
     float cosine1=vnx1*lightvecx1/length1+vny1*lightvecy1/length1+vnz1*lightvecz1/length1;
     float cosine2=vnx2*lightvecx2/length2+vny2*lightvecy2/length2+vnz2*lightvecz2/length2;
     float cosine3=vnx3*lightvecx3/length3+vny3*lightvecy3/length3+vnz3*lightvecz3/length3;
     float cosine4=vnx4*lightvecx4/length4+vny4*lightvecy4/length4+vnz4*lightvecz4/length4;
     float lambertfactor1=max(cosine1,0),lambertfactor2=max(cosine2,0),lambertfactor3=max(cosine3,0),lambertfactor4=max(cosine4,0);
     /*float lumminosity1=1/(1+distance1*distance1),lumminosity2=1/(1+distance2*distance2),lumminosity3=1/(1+distance3*distance3),lumminosity4=1/(1+distance4*distance4);*/
     float lumminosity1=1/(1+length1*length1),lumminosity2=1/(1+length2*length2),lumminosity3=1/(1+length3*length3),lumminosity4=1/(1+length4*length4);
     /*float finalcolor1R=255,finalcolor1G=0,finalcolor1B=0,finalcolor2R=255,finalcolor2G=0,finalcolor2B=0,finalcolor3R=255,finalcolor3G=0,finalcolor3B=0,finalcolor4R=255,finalcolor4G=0,finalcolor4B=0;*/
     float finalcolorR=RMaterial*Ka[0],finalcolorG=GMaterial*Ka[1],finalcolorB=BMaterial*Ka[2];
     float finalcolor1R=RMaterial*(Ka[0]+lightpower*lightcolorR*lambertfactor1*lumminosity1),finalcolor1G=GMaterial*(Ka[1]+lightpower*lightcolorG*lambertfactor1*lumminosity1),finalcolor1B=BMaterial*(Ka[2]+lightpower*lightcolorB*lambertfactor1*lumminosity1);
     float finalcolor2R=RMaterial*(Ka[0]+lightpower*lightcolorR*lambertfactor2*lumminosity2),finalcolor2G=GMaterial*(Ka[1]+lightpower*lightcolorG*lambertfactor2*lumminosity2),finalcolor2B=BMaterial*(Ka[2]+lightpower*lightcolorB*lambertfactor2*lumminosity2);
     float finalcolor3R=RMaterial*(Ka[0]+lightpower*lightcolorR*lambertfactor3*lumminosity3),finalcolor3G=GMaterial*(Ka[1]+lightpower*lightcolorG*lambertfactor3*lumminosity3),finalcolor3B=BMaterial*(Ka[2]+lightpower*lightcolorB*lambertfactor3*lumminosity3);
     float finalcolor4R=RMaterial*(Ka[0]+lightpower*lightcolorR*lambertfactor4*lumminosity4),finalcolor4G=GMaterial*(Ka[1]+lightpower*lightcolorG*lambertfactor4*lumminosity4),finalcolor4B=BMaterial*(Ka[2]+lightpower*lightcolorB*lambertfactor4*lumminosity4);
     rect3D_RGB(x1,y1,z1,finalcolor1R,finalcolor1G,finalcolor1B,x2,y2,z2,finalcolor2R,finalcolor2G,finalcolor2B,x3,y3,z3,finalcolor3R,finalcolor3G,finalcolor3B,x4,y4,z4,finalcolor4R,finalcolor4G,finalcolor4B,finalcolorR,finalcolorG,finalcolorB,2,size);}
     fill(0);stroke(0);}
     
void rect3D_RGB(float x1,float y1,float z1,float R1,float G1,float B1,float x2,float y2,float z2,float R2,float G2,float B2,float x3,float y3,float z3,float R3,float G3,float B3,float x4,float y4,float z4,float R4,float G4,float B4,float R,float G,float B,float st,float siz){
   if(oneloop5==0)
   {f[fend][0]=x1-ax;f[fend][1]=y1-ay;f[fend][2]=z1-az;f[fend][3]=x2-ax;f[fend][4]=y2-ay;f[fend][5]=z2-az;f[fend][6]=x3-ax;f[fend][7]=y3-ay;f[fend][8]=z3-az;fend++;
    f[fend][0]=x2-ax;f[fend][1]=y2-ay;f[fend][2]=z2-az;f[fend][3]=x3-ax;f[fend][4]=y3-ay;f[fend][5]=z3-az;f[fend][6]=x4-ax;f[fend][7]=y4-ay;f[fend][8]=z4-az;fend++;}
   if(siz==0){siz=size;}float[] tri=new float [10];
   check3D(x1,y1,z1,siz);tri[0]=950+A[0];tri[1]=400+A[1];check3D(x2,y2,z2,siz);tri[2]=950+A[0];tri[3]=400+A[1];check3D(x3,y3,z3,siz);tri[4]=950+A[0];tri[5]=400+A[1];check3D(x4,y4,z4,siz);tri[6]=950+A[0];tri[7]=400+A[1];
   point3D_RGB(x1-ax,y1-ay,z1-az,R1,G1,B1,st,siz);point3D_RGB(x2-ax,y2-ay,z2-az,R2,G2,B2,st,siz);point3D_RGB(x3-ax,y3-ay,z3-az,R3,G3,B3,st,siz);point3D_RGB(x4-ax,y4-ay,z4-az,R4,G4,B4,st,siz);
   Bpoint3D(x1-ax,y1-ay,z1-az);Bpoint3D(x2-ax,y2-ay,z2-az);Bpoint3D(x3-ax,y3-ay,z3-az);Bpoint3D(x4-ax,y4-ay,z4-az);
   fill(0);strokeWeight(5);}

void ex1subfunction(){
     for(int i=0;i<10000;i++){p[i]=new vector();}
     for(int i=0; i<10; i++) for(int j=0; j<10; j++) {p[10*i+j]=new vector((2*i-9),(2*j-9),sqrt(200-(2*i-9)*(2*i-9)-(2*j-9)*(2*j-9)));u[10*i+j]=0.5; v[10*i+j]=0.5;}
     b[0][0]=new vector(-150, -150, 0); b[2][0]=new vector(150, -150, 0);b[0][2]=new vector(-150, 150, 0);
     b[2][2]=new vector(150, 150, 0);   b[1][0]=new vector(0, -150, 300);b[0][1]=new vector(-150, 0, 300);
     b[2][1]=new vector(150, 0, 300);   b[1][2]=new vector(0, 150, 300); b[1][1]=new vector();
     for(int i=0; i<20; i++){Find_b11(); Rearrange();}
     return;}
     
void showexample(){
      checkrc33(0,b[0][0].vectori(0),b[0][0].vectori(1),b[0][0].vectori(2),b[0][1].vectori(0),b[0][1].vectori(1),b[0][1].vectori(2),b[0][2].vectori(0),b[0][2].vectori(1),b[0][2].vectori(2));
      checkrc33(1,b[1][0].vectori(0),b[1][0].vectori(1),b[1][0].vectori(2),b[1][1].vectori(0),b[1][1].vectori(1),b[1][1].vectori(2),b[1][2].vectori(0),b[1][2].vectori(1),b[1][2].vectori(2));
      checkrc33(2,b[2][0].vectori(0),b[2][0].vectori(1),b[2][0].vectori(2),b[2][1].vectori(0),b[2][1].vectori(1),b[2][1].vectori(2),b[2][2].vectori(0),b[2][2].vectori(1),b[2][2].vectori(2));
      Bezier_surface_line_rc33(255, 0, 255, size, 0.05);
      Bezier_surface_control_line_rc33(255, 246, 142, size);}
      
void show(){
    for(int i=0;i<showend;i++){
    //if(vsh[i]==0)point3D_RGB(show[0][i][0],show[0][i][1],show[0][i][2],255,0,0,3,size);
    if(vsh[i]==1)point3D_RGB(show[0][i][0],show[0][i][1],show[0][i][2],0,255,0,3,size);
    if(vsh[i]==2)point3D_RGB(show[0][i][0],show[0][i][1],show[0][i][2],255,150,0,3,size);
    if(vsh[i]==3)point3D_RGB(show[0][i][0],show[0][i][1],show[0][i][2],150,0,155,3,size);
    if(vsh[i]==4)point3D_RGB(show[0][i][0],show[0][i][1],show[0][i][2],0,0,255,3,size);
   }}     
   void imagein(){
  surface.setTitle("Bezier 3D compression");surface.setLocation(230, 100);smooth();
  img1=loadImage("data\\image\\window.JPG");
  img2=loadImage("data\\image\\retrieve.PNG");
  img3=loadImage("data\\image\\save.PNG");
  img4=loadImage("data\\image\\info.PNG");
  img5=loadImage("data\\image\\xcode.PNG");
  img6=loadImage("data\\image\\function.PNG");
  img7=loadImage("data\\image\\preview.PNG");
  img8=loadImage("data\\image\\compression.PNG");
  img9=loadImage("data\\image\\home.PNG");
  img10=loadImage("data\\image\\search.PNG");}
  
void setupcheck() {combination(20, 10);f(10);combination2();
    for(int i=0;i<10000;i++){win5[i]="";}
    for(int i=0;i<10000;i++){win5out[i]="";}
    for(int i=0;i<10;i++){for(int j=0;j<3;j++){rayshow[i][j]=0;}}
    Ka[0]=0.05;Ka[1]=0.05;Ka[2]=0.6;}
    
int f(int k) {if (k==1){fac[1]=1;return 1;}else{int s;s=k*f(k-1);fac[k]=s;return s;}}

int combination(int a, int b) {if ((a==b)||(b==0)){com[0][0]=1;com[a][b]=1;return 1;}else {int s;s=combination(a-1, b-1)+combination(a-1, b);com[a][b]=s;return s;}}

float power(float x, int n) {if (n==0) {return 1;}else {int i;float sum=1;for (i=0; i<n; i++){sum*=x;}return sum;}}

void combination2(){
  for(int i=0; i<=3; i++){for(int j=0; j<=3; j++){if (i+j<=3){com2[i][j][3-i-j]= com[i+j][i]*com[3][i+j];/*println(i,j,com2[i][j][3-i-j]);*/}}}
  for (int i=0; i<=2; i++){for (int j=0; j<=2; j++){if (i+j<=2){com2[i][j][2-i-j]= com[i+j][i]*com[2][i+j];/*println(i,j,com2[i][j][2-i-j]);*/}}}}
  
void example_Bezier_rect(){ 
  checkrc33(0, -200, -200, -200, -100, -300, 0, -200, -200, 200);
  checkrc33(1, 100, -100, -200, 200, -200, 0, 100, -100, 200);
  checkrc33(2, 200, 200, -200, 300, 100, 0, 200, 200, 200);
  Bezier_surface_line_rc33(255, 0, 0, size, 0.2);
  Bezier_surface_control_line_rc33(237, 0, 255, size);}
  
void example_Bezier_tri(){
  checktr33_sample();
  Bezier_triangle_line33(255, 0, 0, size, 0.2);
  Bezier_triangle_control_line33(237, 0, 255, size);}
  
void example_Bezier_line(){
  Bezier3D(100, 100, 100, -100, -100, -100, 50, 200, -150, 1, 0);}
  
void example_Bezier_rect44(){ 
  checkrc44(0, 123, 231, 321, 241, -123, 57, -13, 193, 200, -147, -100, 0);
  checkrc44(1, 152, -179, -35, 294, 240, -199, -201, 144, -44, 208, -98, 273);
  checkrc44(2, 71, -163, 258, 111, -222, 260, 109, -10, 63, 99, -130, 91);
  checkrc44(3, -100, 210, 57, -39, -284, 95, -68, 35, 249, -103, -47, 38);
  Bezier_surface_line_rc44(255, 0, 0, size, 0.05);
  Bezier_surface_control_line_rc44(255, 246, 142, size);}
  
void example_Bezier_rect33(){ 
  checkrc33(0, 21, 241, -123, 57, -13, 193, 200, -147, -100);
  checkrc33(1, -35, 294, 240, -199, -201, 144, -44, 208, -96);
  checkrc33(2, 258, 111, -222, 260, 109, -10, 63, 99, -130);
  Bezier_surface_line_rc33(255, 0, 0, size, 0.05);
  Bezier_surface_control_line_rc33(255, 246, 142, size);}
  
void example_Bezier_tri44(){
  checktr44();
  Bezier_triangle_line44(255, 0, 0, size, 0.1);
  Bezier_triangle_control_line44(255, 246, 142, size);}
  
void example_Bezier_tri33(){
  checktr33();
  Bezier_triangle_line33(0, 255, 0, size, 0.2);
  Bezier_triangle_control_line33(255, 246, 142, size);}      
  
void checktr44(){
  checkt(3, 0, 0, 100, 100, 100);
  checkt(2, 1, 0, 50, 75, 125);
  checkt(2, 0, 1, 75, -75, 50);
  checkt(1, 2, 0, 104, 115, 92);
  checkt(1, 1, 1, 4, -104, 93);
  checkt(1, 0, 2, -231, -131, 31);
  checkt(0, 3, 0, -100, 0, -30);
  checkt(0, 2, 1, -60, -30, -130);
  checkt(0, 1, 2, -30, 130, -50);
  checkt(0, 0, 3, 104, -90, -100);}
  
void checktr33(){
  checkt(2, 0, 0, 100, 100, 100);
  checkt(1, 1, 0, 50, 75, 125);
  checkt(1, 0, 1, 75, -75, 50);
  checkt(0, 2, 0, 104, 115, 92);
  checkt(0, 1, 1, 100, -104, 93);
  checkt(0, 0, 2, -231, -131, 31);}
  
void checktr33_sample(){
  checkt(2, 0, 0, -200, -200, 200);
  checkt(1, 1, 0, 200, 0, 200);
  checkt(1, 0, 1, 0, 200, 200);
  checkt(0, 2, 0, 200, -200, -200);
  checkt(0, 1, 1, 200, 200, 0);
  checkt(0, 0, 2, -200, 200, -200);}

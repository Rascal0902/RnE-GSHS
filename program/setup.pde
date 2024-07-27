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
  
void sysinfo() {
  println( "__SYS INFO :");
  println( "System     : " + System.getProperty("os.name") + "  " + System.getProperty("os.version") + "  " + System.getProperty("os.arch") );
  println( "JAVA       : " + System.getProperty("java.home")  + " rev: " +javaVersionName);
  //println( System.getProperty("java.class.path") );
  //println( "\n" + isGL() + "\n" );
  println( "OPENGL     : VENDOR " + PGraphicsOpenGL.OPENGL_VENDOR+" RENDERER " + PGraphicsOpenGL.OPENGL_RENDERER+" VERSION " + PGraphicsOpenGL.OPENGL_VERSION+" GLSL_VERSION: " + PGraphicsOpenGL.GLSL_VERSION);
  println( "user.home  : " + System.getProperty("user.home") );
  println( "user.dir   : " + System.getProperty("user.dir") );
  println( "user.name  : " + System.getProperty("user.name") );
  println( "sketchPath : " + sketchPath() );
  println( "dataPath   : " + dataPath("") );
  println( "dataFile   : " + dataFile("") );
  println( "frameRate  :  actual "+nf(frameRate, 0, 1));
  println( "canvas     : width "+width+" height "+height+" pix "+(width*height));
}

void setupcheck() {combination(20, 10);f(10);combination2();
    for(int i=0;i<10000;i++){win5[i]="";}
    for(int i=0;i<10000;i++){win5out[i]="";}
    for(int i=0;i<10;i++){for(int j=0;j<3;j++){rayshow[i][j]=0;}}
    Ka[0]=0.05;Ka[1]=0.05;Ka[2]=0.6;}
    
int f(int k) {if (k==1){fac[1]=1;return 1;}else{int s;s=k*f(k-1);fac[k]=s;return s;}}

float power(float x, int n) {if (n==0) {return 1;}else {int i;float sum=1;for (i=0; i<n; i++){sum*=x;}return sum;}}

int combination(int a, int b) {if ((a==b)||(b==0)){com[0][0]=1;com[a][b]=1;return 1;}else {int s;s=combination(a-1, b-1)+combination(a-1, b);com[a][b]=s;return s;}}

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

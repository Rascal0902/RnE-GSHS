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

float alpha=5;
void go(){
  win4clear();
  long s=System.currentTimeMillis(); 
  println("alpha:",alpha);                             win4push("alpha:"+Float.toString(alpha));   
  println("근사를 시작합니다");     println("0%");       win4push("0%");                               
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
  float[] subfloat = new float[2];float ans;//소수점 아래 5자리 까지
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

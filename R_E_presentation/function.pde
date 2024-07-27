float[][][] S=new float[10][10][3];
float[][] com=new float [21][21];
float[][][] com2=new float[10][10][10];
float[]ray = new float[6];
float[]r3D = new float [6];
float[]Acir = new float[6];
int part=1;
void point3D(float x,float y,float z,float siz){if(siz==0){siz=size;}stroke(255*coordinateBW);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  strokeWeight(5);point(locatex+A[0],locatey+A[1]);fill(0);stroke(0);strokeWeight(5);}
  
void point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz){if(siz==0){siz=size;}
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;
  strokeWeight(st);stroke(R,G,B);point(locatex+A[0],locatey+A[1]);stroke(0);strokeWeight(5);}
  
void line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight){if(siz==0){siz=size;}
  A[2]=x*cos(radians(ceta))-z*sin(radians(ceta));A[2]=A[2]*siz;
  A[3]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[3]=A[3]*siz;
  A[4]=w*cos(radians(ceta))-n*sin(radians(ceta));A[4]=A[4]*siz;
  A[5]=m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi));A[5]=A[5]*siz;
  strokeWeight(strokeweight);stroke(R,G,B);line(locatex+A[2],locatey+A[3],locatex+A[4],locatey+A[5]);stroke(0);strokeWeight(5);}
  
void check3D(float x,float y,float z,float siz){if(siz==0){siz=size;}
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));A[0]=A[0]*siz;
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));A[1]=A[1]*siz;}
  
void checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3){   
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;}

void Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz){if(siz==0){siz=size;}
  strokeWeight(5);stroke(#08FF16);fill(255);textSize(20);float z,w,k,t=0;stroke(255);
  for(t=0;t<=1;t+=0.005){z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;k=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;point3D_RGB(z,w,k,127,255,0,5,siz);}
  fill(0,255,0);point3D_RGB(x0,y0,z0,127,255,0,4,siz);check3D(x0+10,y0-20,z0-20,siz);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D_RGB(x1,y1,z1,127,255,0,4,siz);check3D(x1+10,y1-20,z1-20,siz);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D_RGB(x2,y2,z2,127,255,0,4,siz);check3D(x2+10,y2-20,z2-20,siz);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  stroke(0);fill(0);}
    
void Bezier_surface_control_line_rc33(float R,float G,float B,float siz){if(siz==0){siz=size;}
    for(int i=0;i<3;i++) {for(int j=1;j<3;j++) {line3D(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,3);}}
    for(int j=0;j<3;j++) {for(int i=1;i<3;i++) {line3D(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,3);}}}
        
void Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap){if(siz==0){siz=size;}
  int i,j;float u,v;float[][][] save=new float[1005][1005][3];
   for(u=0;u<=1.001;u+=gap){for(v=0;v<=1.001;v+=gap){float sumx=0,sumy=0,sumz=0;
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumx+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][0];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumy+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][1];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumz+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;}}
   for(u=0;u<=1.001;u+=gap){float savx=0,savy=0,savz=0;
    for(v=0;v<=1.001;v+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      point3D_RGB(sumx,sumy,sumz,R,G,B,5,siz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,R,G,B,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}
   for(v=0;v<=1.001;v+=gap){float savx=0,savy=0,savz=0;
    for(u=0;u<=1.001;u+=gap){float k,sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      if(u==0){savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}
      else{line3D(savx,savy,savz,sumx,sumy,sumz,siz,R,G,B,3);
        savx=sumx;savy=sumy;savz=sumz;sumx=0;sumy=0;sumz=0;}}}}
      
void pointcir_RGB(float r,float angle1,float z,float R,float G,float B,float st,float siz){ if(siz==0){siz=size;}
   float x,y;
   x=r*cos(radians(angle1));
   y=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(st);stroke(R,G,B);point(locatex+A[0],locatey+A[1]);stroke(0);strokeWeight(5);}
   
void linecir(float r1,float angle1,float z1,float r2,float angle2,float z2,float siz,float R,float G,float B,float strokeweight){ if(siz==0){siz=size;}
  float x,y,z,w,m,n;
   x=r1*cos(radians(angle1));y=r1*sin(radians(angle1));z=z1;
   w=r2*cos(radians(angle2));m=r2*sin(radians(angle2));n=z2;
   A[2]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[3]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;
   A[4]=(w*cos(radians(ceta))-n*sin(radians(ceta)))*siz;
   A[5]=(m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi)))*siz;
   strokeWeight(strokeweight);stroke(R,G,B);line(locatex+A[2],locatey+A[3],locatex+A[4],locatey+A[5]);stroke(0);strokeWeight(5);}
   
void checkcir(float r,float angle1,float z,float siz){ if(siz==0){siz=size;}
   float x,y;
   x=r*cos(radians(angle1));y=r*sin(radians(angle1));
   A[0]=(x*cos(radians(ceta))-z*sin(radians(ceta)))*siz;
   A[1]=(y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi)))*siz;}
   
void cylinder_ray(float x,float z, float ymin,float ymax, float r,float findy,float angle){
  float x1,y1,z1,x2,y2,z2;
   x1=x+r*cos(radians(angle));z1=z+r*sin(radians(angle));y1=findy;
   x2=x;z2=z;y2=findy;
   line3D(x1,y1,z1,x2,y2,z2,size,0,0,255,3);
   point3D_RGB(x1,y1,z1,250,0,250,7,size);point3D_RGB(x2,y2,z2,250,0,250,7,size);
   ray[0]=x1;ray[1]=y1;ray[2]=z1;ray[3]=x2;ray[4]=y2;ray[5]=z2;}
   
void ray_triangle(float x,float z, float ymin,float ymax, float r,float findy,float angle,float trix1,float triy1,float triz1,float trix2,float triy2,float triz2,float trix3,float triy3,float triz3){
  float x1,y1,z1,x2,y2,z2,dx,dy,dz,x0,y0,z0,t,u,v,e1x,e1y,e1z,e2x,e2y,e2z,Tx,Ty,Tz,Px,Py,Pz,Qx,Qy,Qz;
   x1=x+r*cos(radians(angle));z1=z+r*sin(radians(angle));y1=findy;x2=x;z2=z;y2=findy;
   ray[0]=x1;ray[1]=y1;ray[2]=z1;ray[3]=x2;ray[4]=y2;ray[5]=z2;
  dx=(ray[0]-ray[3])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  dy=(ray[1]-ray[4])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  dz=(ray[2]-ray[5])/sqrt((ray[3]-ray[0])*(ray[3]-ray[0])+(ray[4]-ray[1])*(ray[4]-ray[1])+(ray[5]-ray[2])*(ray[5]-ray[2]));
  x0=x;z0=z;y0=findy;
  e1x=trix2-trix1;e1y=triy2-triy1;e1z=triz2-triz1;e2x=trix3-trix1;e2y=triy3-triy1;e2z=triz3-triz1;
  Tx=x0-trix1;Ty=y0-triy1;Tz=z0-triz1;
  Px=dy*e2z-dz*e2y;Py=dz*e2x-dx*e2z;Pz=dx*e2y-dy*e2x;Qx=Ty*e1z-Tz*e1y;Qy=Tz*e1x-Tx*e1z;Qz=Tx*e1y-Ty*e1x;
  t=(Qx*e2x+Qy*e2y+Qz*e2z)/(Px*e1x+Py*e1y+Pz*e1z);u=(Px*Tx+Py*Ty+Pz*Tz)/(Px*e1x+Py*e1y+Pz*e1z);v=(Qx*dx+Qy*dy+Qz*dz)/(Px*e1x+Py*e1y+Pz*e1z);
  if( (u>0) && (u<1) && (v>0) && (v<1)  ){r3D[0]=x0+t*dx;r3D[1]=y0+t*dy;r3D[2]=z0+t*dz;
  point3D_RGB(x0+t*dx,y0+t*dy,z0+t*dz,127,0,255,10,size);}else{r3D[0]=0;r3D[1]=0;r3D[2]=0;}}
       
void triangle_3D(float trix1,float triy1,float triz1,float trix2,float triy2,float triz2,float trix3,float triy3,float triz3){
  line3D(trix1,triy1,triz1,trix2,triy2,triz2,size,250,150,0,4);
  line3D(trix2,triy2,triz2,trix3,triy3,triz3,size,250,150,0,4);
  line3D(trix3,triy3,triz3,trix1,triy1,triz1,size,250,150,0,4);
  /*line3D((trix1+trix2)/2,(triy1+triy2)/2,(triz1+triz2)/2,(trix2+trix3)/2,(triy2+triy3)/2,(triz2+triz3)/2,size,250,150,0,4);
  line3D((trix2+trix3)/2,(triy2+triy3)/2,(triz2+triz3)/2,(trix3+trix1)/2,(triy3+triy1)/2,(triz3+triz1)/2,size,250,150,0,4);
  line3D((trix3+trix1)/2,(triy3+triy1)/2,(triz3+triz1)/2,(trix1+trix2)/2,(triy1+triy2)/2,(triz1+triz2)/2,size,250,150,0,4);*/}
  
void cylinder(float x,float y, float zmin,float zmax, float r){
   float z,w,m,n,l,p;
   for(int i=0;i<=360;i++){for(int j=0;j<=2*power(2,part-1);j++){
       z=r*cos(radians(i))+x;w=r*sin(radians(i))+y;m=(zmax-zmin)/(2*power(2,part-1))*j+zmin;point3D_RGB(z,w,m,0,202,250,2,size);}
       z=r*cos(radians(i))+x;w=r*sin(radians(i))+y;m=zmin;l=r*cos(radians(i))+x;p=r*sin(radians(i))+y;n=zmax;
       point3D_RGB(z,w,m,0,202,250,2,size);point3D_RGB(l,p,n,0,202,250,2,size);}
   for(int i=0; i<4*power(2, part-1); i++){   
       z=r*cos(radians(i*360/(4*power(2,part-1))))+x;w=r*sin(radians(i*360/(4*power(2,part-1))))+y;m=zmin;l=r*cos(radians(i*360/(4*power(2,part-1))))+x;p=r*sin(radians(i*360/(4*power(2,part-1))))+y;n=zmax;
       line3D(z,w,m,l,p,n,size,0,202,250,2);}}
  

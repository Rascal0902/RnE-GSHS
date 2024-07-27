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
  fill(0,255,0);point3D(x0,y0,z0,siz);check3D(x0+10,y0-20,z0-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P0",950+A[0],400+A[1]);/*text((int)num,950+A[0]+35,400+A[1]);*/stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x1,y1,z1,siz);check3D(x1+10,y1-20,z1-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P1",950+A[0],400+A[1]);/*text((int)num,950+A[0]+35,400+A[1]);*/stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x2,y2,z2,siz);check3D(x2+10,y2-20,z2-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P2",950+A[0],400+A[1]);/*text((int)num,950+A[0]+35,400+A[1]);*/stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  stroke(0);fill(0);}
  
void Bezier_surface_control_line_rc44(float R,float G,float B,float siz){if(siz==0){siz=size;}
    for(int i=0;i<4;i++) {for(int j=1;j<4;j++) {line3D(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<4;j++) {for(int i=1;i<4;i++) {line3D(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}}
    
void Bezier_surface_control_line_rc33(float R,float G,float B,float siz){if(siz==0){siz=size;}
    for(int i=0;i<3;i++) {for(int j=1;j<3;j++) {line3D(S[i][j-1][0],S[i][j-1][1],S[i][j-1][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    for(int j=0;j<3;j++) {for(int i=1;i<3;i++) {line3D(S[i-1][j][0],S[i-1][j][1],S[i-1][j][2],S[i][j][0],S[i][j][1],S[i][j][2],siz,R,G,B,1);}}
    int i,j;
    i=0;j=0;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,255,0,15,siz);
    i=2;j=0;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,255,0,15,siz);
    i=0;j=2;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,255,0,15,siz);
    i=2;j=2;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,255,0,15,siz);
    i=1;j=0;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,0,255,15,siz);
    i=1;j=2;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,0,255,15,siz);
    i=0;j=1;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,0,255,15,siz);
    i=2;j=1;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],0,0,255,15,siz);
    i=1;j=1;point3D_RGB(S[i][j][0],S[i][j][1],S[i][j][2],255,0,0,20,siz);
}  
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

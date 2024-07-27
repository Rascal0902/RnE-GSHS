void ex5(){
  Weighted_Bezier3D(200,0,0,0,0,0,0,0,200,1,0,255,0,0,0,255,0,0,0,255);
}
void ex6(){
  //pi=311.400;ceta=23;
  checkrc33RGB(0, -200, -200, -200, -100, -300, 0, -200, -200, 200,    255,0,0,  255,127,127, 255,255,255);
  checkrc33RGB(1, 100, -100, -200, 200, -200, 0, 100, -100, 200,       127,127,0,  127,127,127,  127,127,255);
  checkrc33RGB(2, 200, 200, -200, 300, 100, 0, 200, 200, 200,          0,255,0,   0,127,127,     0,0,255);
  Bezier_surface_line_rc33RGB(size, 0.005);
  //Bezier_surface_control_line_rc33(237, 0, 255, size);
}
void Weighted_Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz,float w1R,float w1G,float w1B,float w2R,float w2G,float w2B,float w3R,float w3G,float w3B){if(siz==0){siz=size;}
  strokeWeight(5);stroke(#08FF16);fill(255);textSize(20);float z,w,k,t=0;stroke(255);
  for(t=0;t<=1;t+=0.005){z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;k=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;
  point3D_RGB(z,w,k,t*t*w1R+2*t*(1-t)*w2R+(1-t)*(1-t)*w3R,t*t*w1G+2*t*(1-t)*w2G+(1-t)*(1-t)*w3G,t*t*w1B+2*t*(1-t)*w2B+(1-t)*(1-t)*w3B,5,siz);}
  fill(0,255,0);point3D(x0,y0,z0,siz);check3D(x0+10,y0-20,z0-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P0",950+A[0],400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x1,y1,z1,siz);check3D(x1+10,y1-20,z1-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P1",950+A[0],400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  fill(0,255,0);point3D(x2,y2,z2,siz);check3D(x2+10,y2-20,z2-20,siz);stroke(255*coordinateBW);fill(255*coordinateBW);text("P2",950+A[0],400+A[1]);stroke(255*(1-coordinateBW));fill(255*(1-coordinateBW));
  stroke(0);fill(0);}
  
void Bezier_surface_line_rc33RGB(float siz,float gap){if(siz==0){siz=size;}
  //fill(255);textSize(20);text("scale=sqrt(sqrt(k)*k)",413,70);
  int i,j;float u,v;float[][][] save=new float[1005][1005][3];float[][][] saveRGB=new float[1005][1005][3];
   for(u=0;u<=1.001;u+=gap){for(v=0;v<=1.001;v+=gap){float sumx=0,sumy=0,sumz=0;float sumR=0,sumG=0,sumB=0;
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumx+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][0];sumR+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*SRGB[i][j][0];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumy+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][1];sumG+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*SRGB[i][j][1];}}
      for(i=0;i<3;i++){for(j=0;j<3;j++){sumz+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*S[i][j][2];sumB+=com[2][i]*com[2][j]*power(u,i)*power(v,j)*power(1-u,2-i)*power(1-v,2-j)*SRGB[i][j][2];}}
      save[(int)(u*1000)][(int)(v*1000)][0]=sumx;save[(int)(u*1000)][(int)(v*1000)][1]=sumy;save[(int)(u*1000)][(int)(v*1000)][2]=sumz;
      saveRGB[(int)(u*1000)][(int)(v*1000)][0]=sumR;saveRGB[(int)(u*1000)][(int)(v*1000)][1]=sumG;saveRGB[(int)(u*1000)][(int)(v*1000)][2]=sumB;}}
   for(u=0;u<=1.001;u+=gap){float savx=0,savy=0,savz=0;float savR=0,savG=0,savB=0;
    for(v=0;v<=1.001;v+=gap){
      float sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      float sumR=saveRGB[(int)(u*1000)][(int)(v*1000)][0],sumG=saveRGB[(int)(u*1000)][(int)(v*1000)][1],sumB=saveRGB[(int)(u*1000)][(int)(v*1000)][2];
      point3D_RGB(sumx,sumy,sumz,sumR,sumG,sumB,5,siz);
      if(v==0){savx=sumx;savy=sumy;savz=sumz;savR=sumR;savG=sumG;savB=sumB;sumx=0;sumy=0;sumz=0;sumR=0;sumG=0;sumB=0;}
      else{weightedline3D(savx,savy,savz,sumx,sumy,sumz,siz,savR,savG,savB,sumR,sumG,sumB,3);
        savx=sumx;savy=sumy;savz=sumz;savR=sumR;savG=sumG;savB=sumB;sumx=0;sumy=0;sumz=0;sumR=0;sumG=0;sumB=0;}}}
   for(v=0;v<=1.001;v+=gap){float savx=0,savy=0,savz=0;float savR=0,savG=0,savB=0;
    for(u=0;u<=1.001;u+=gap){
      float sumx=save[(int)(u*1000)][(int)(v*1000)][0],sumy=save[(int)(u*1000)][(int)(v*1000)][1],sumz=save[(int)(u*1000)][(int)(v*1000)][2];
      float sumR=saveRGB[(int)(u*1000)][(int)(v*1000)][0],sumG=saveRGB[(int)(u*1000)][(int)(v*1000)][1],sumB=saveRGB[(int)(u*1000)][(int)(v*1000)][2];
      if(u==0){savx=sumx;savy=sumy;savz=sumz;savR=sumR;savG=sumG;savB=sumB;sumx=0;sumy=0;sumz=0;sumR=0;sumG=0;sumB=0;}
      else{weightedline3D(savx,savy,savz,sumx,sumy,sumz,siz,savR,savG,savB,sumR,sumG,sumB,3);
        savx=sumx;savy=sumy;savz=sumz;savR=sumR;savG=sumG;savB=sumB;sumx=0;sumy=0;sumz=0;sumR=0;sumG=0;sumB=0;}}}}
    
void checkrc33RGB(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float w1R,float w1G,float w1B,float w2R,float w2G,float w2B,float w3R,float w3G,float w3B){   
  S[m][0][0]=x1;S[m][0][1]=y1;S[m][0][2]=z1;
  SRGB[m][0][0]=w1R;SRGB[m][0][1]=w1G;SRGB[m][0][2]=w1B;
  S[m][1][0]=x2;S[m][1][1]=y2;S[m][1][2]=z2;
  SRGB[m][1][0]=w2R;SRGB[m][1][1]=w2G;SRGB[m][1][2]=w2B;
  S[m][2][0]=x3;S[m][2][1]=y3;S[m][2][2]=z3;
  SRGB[m][2][0]=w3R;SRGB[m][2][1]=w3G;SRGB[m][2][2]=w3B;}
  
void weightedline3D(float x,float y,float z,float w,float m,float n,float siz,float R1,float G1,float B1,float R2,float G2,float B2,float strokeweight){if(siz==0){siz=size;}
  float savx=0,savy=0,savz=0,dR,dG,dB,dx,dy,dz;strokeWeight(strokeweight);
  savx=x;savy=y;savz=z;dx=(w-x)/100;dy=(m-y)/100;dz=(n-z)/100;dR=(R2-R1)/100;dG=(G2-G1)/100;dB=(B2-B1)/100;
  for(int t=0;t<100;t++){line3D(savx,savy,savz,savx+dx,savy+dy,savz+dz,siz,R1+dR*t,G1+dG*t,B1+dB*t,strokeweight);savx+=dx;savy+=dy;savz+=dz;}
  stroke(0);strokeWeight(5);}

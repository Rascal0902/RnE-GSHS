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
    else if (abs(Bst.ix(i)-centerx)<=1 && abs(Bst.iy(i)-centery)<=1 && abs(Bst.iz(i)-centerz)<=1) {continue;} //경계 근처 
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

void Blinecir(float r1,float angle1,float z1,float r2,float angle2,float z2) {  //구간마다 점 추가
   float x,y,z,w,m,n;
   x=r1*cos(radians(angle1));y=r1*sin(radians(angle1)); z=z1;
   w=r2*cos(radians(angle2));m=r2*sin(radians(angle2));n=z2;
  float dx,dy,dz; dx=(w-x)/1000;dy=(m-y)/1000;dz=(n-z)/1000;
  for (int i=0; i<=1000; i++) {Bpoint3D(x, y, z);x+=dx;y+=dy;z+=dz;}return;}

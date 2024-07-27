int oneloop=0;
float t,move=0,app=20,maxmin,min,ceta,pi,ex=0;
float[] M=  new float[100];
float[][] H = new float[1000][1000];
float[] A = new float[6];
void setup(){ size(1000,1000);background(255);}
void draw(){
  if(key=='0'){ex=0;oneloop=0;}if(key=='1'){ex=1;oneloop=0;}if(key=='2'){ex=2;oneloop=0;}
  if(ex==0){if(oneloop==0){background(255);oneloop=1;}
    if(mouseButton==LEFT){
    background(0);
    ceta=mouseX/1000.0*360.0;pi=mouseY/1000.0*360.0;
    strokeWeight(5);stroke(255);
    textSize(20);text("pi=",85,100);text("ceta=",85,130);
    text(pi,120,100);text(ceta,140,130);}
    coordinate3D();
  Bezier3D(100,120,250,250,200,30,10,120,30,1);
  Bezier3D(-100,-120,-250,-250,-200,-30,-10,-120,-30,2);
  Bezier_line3D(100,120,250,250,200,30,10,120,30,-100,-120,-250,-250,-200,-30,-10,-120,-30);
  Bezier_move3D(100,120,250,250,200,30,10,120,30,-100,-120,-250,-250,-200,-30,-10,-120,-30);}
  if(ex==1){if(oneloop==0){background(255);oneloop=1;}
    if(mouseButton==LEFT){
    background(0);
    ceta=mouseX/1000.0*360.0;pi=mouseY/1000.0*360.0;
    strokeWeight(5);stroke(255);
    textSize(20);text("pi=",85,100);text("ceta=",85,130);
    text(pi,120,100);text(ceta,140,130);}
    coordinate3D();
    Bezier_move_change3D(100,120,250,250,200,30,10,120,30,-100,-120,-250,-250,-200,-30,-10,-120,-30,move,0,255*move,255-255*move,0,10);
    Bezier_move_change3D(100,120,250,250,200,30,10,120,30,-100,-120,-250,-250,-200,-30,-10,-120,-30,move-0.02,0,0,0,1,8);
    if(move<=1){move+=0.002;}else{background(0);move=0;}}
  if(ex==2){if(oneloop==0){background(255);oneloop=1;}
    circle2D(100,0,0,360);
    makeBezier(0,360,100,0);}}
void Bezier_move_change3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4,float x5,float y5,float z5,float k,float R,float G,float B,float m,float str){
  float i,t=0,u0,v0,u1,v1,u2,v2,w0,w1,w2,u,v,w;
  i=k;
    u0=(1-i)*x0+i*x3;u1=(1-i)*x1+i*x4;u2=(1-i)*x2+i*x5;
    v0=(1-i)*y0+i*y3;v1=(1-i)*y1+i*y4;v2=(1-i)*y2+i*y5;
    w0=(1-i)*z0+i*z3;w1=(1-i)*z1+i*z4;w2=(1-i)*z2+i*z5;
    if(m==0){for(t=0.01;t<=0.99;t+=0.005){
      u=t*t*u0+2*t*(1-t)*u1+(1-t)*(1-t)*u2;v=t*t*v0+2*t*(1-t)*v1+(1-t)*(1-t)*v2;w=t*t*w0+2*t*(1-t)*w1+(1-t)*(1-t)*w2;
      point3D_RGB(u,v,w,R,G,B,str);}}
    else{for(t=0.01;t<=1.01;t+=0.005){
      u=t*t*u0+2*t*(1-t)*u1+(1-t)*(1-t)*u2;v=t*t*v0+2*t*(1-t)*v1+(1-t)*(1-t)*v2;w=t*t*w0+2*t*(1-t)*w1+(1-t)*(1-t)*w2;
      point3D_RGB(u,v,w,R,G,B,str);}}}
void Bezier_line3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4,float x5,float y5,float z5){
  float z,w,d,e,t=0,u,v;
    for(t=0;t<=1;t+=0.2){
    z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;d=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;
    u=t*t*x3+2*t*(1-t)*x4+(1-t)*(1-t)*x5;v=t*t*y3+2*t*(1-t)*y4+(1-t)*(1-t)*y5;e=t*t*z3+2*t*(1-t)*z4+(1-t)*(1-t)*z5;
    strokeWeight(2);line3D_RGB(z,w,d,u,v,e,149,3,255);}}
void Bezier_move3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4,float x5,float y5,float z5){
  float i,t=0,u0,v0,w0,u1,v1,w1,u2,v2,w2,u,v,w;
  for(i=0.1;i<=0.9;i+=0.1){
    u0=(1-i)*x0+i*x3;u1=(1-i)*x1+i*x4;u2=(1-i)*x2+i*x5;
    v0=(1-i)*y0+i*y3;v1=(1-i)*y1+i*y4;v2=(1-i)*y2+i*y5;
    w0=(1-i)*z0+i*z3;w1=(1-i)*z1+i*z4;w2=(1-i)*z2+i*z5;
      for(t=0;t<=1;t+=0.005){
      u=t*t*u0+2*t*(1-t)*u1+(1-t)*(1-t)*u2;v=t*t*v0+2*t*(1-t)*v1+(1-t)*(1-t)*v2;w=t*t*w0+2*t*(1-t)*w1+(1-t)*(1-t)*w2;
      stroke(28,234,109);strokeWeight(10);point3D_RGB(u,v,w,3,255,101,5);}}}
void makeBezier(float start,float last,float r,float n){
  goBezier(start,(start+last)/2,0,r,n);
  goBezier((start+last)/2,last,1,r,n);
  if(M[(int)n]>app){
    nogoBezier(start,(start+last)/2,0,r,n);
    nogoBezier((start+last)/2,last,1,r,n);
    makeBezier(start,(start+last)/2,r,n+1);
    makeBezier((start+last)/2,last,r,n+1);}}
void nogoBezier(float start,float last,float n,float r,float num){
  float gamma1x,gammahalfx,gamma0x,beta1x,betahalfx,beta0x;
  float gamma1y,gammahalfy,gamma0y,beta1y,betahalfy,beta0y;
  gamma0x=500+r*cos(radians(start));gamma0y=400+r*sin(radians(start));
  gamma1x=500+r*cos(radians(last));gamma1y=400+r*sin(radians(last));
  gammahalfx=500+r*cos(radians((start+last)/2));gammahalfy=400+r*sin(radians((start+last)/2));
  beta0x=500+r*cos(radians(start));beta0y=400+r*sin(radians(start));
  beta1x=500+r*cos(radians(last));beta1y=400+r*sin(radians(last));
  betahalfx=2*gammahalfx-(gamma0x+gamma1x)/2;betahalfy=2*gammahalfy-(gamma0y+gamma1y)/2;
  noBezier(beta0x,beta0y,betahalfx,betahalfy,beta1x,beta1y);}
void noBezier(float x0,float y0,float x1,float y1,float x2,float y2){
   float z,w,t=0;
  for(t=0;t<=1;t+=0.005){
    z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;
    stroke(255);strokeWeight(6);point(z,w);}}
void goBezier(float start,float last,float n,float r,float num){
  float gamma1x,gammahalfx,gamma0x,beta1x,betahalfx,beta0x;
  float gamma1y,gammahalfy,gamma0y,beta1y,betahalfy,beta0y;
  gamma0x=500+r*cos(radians(start));gamma0y=400+r*sin(radians(start));
  gamma1x=500+r*cos(radians(last));gamma1y=400+r*sin(radians(last));
  gammahalfx=500+r*cos(radians((start+last)/2));gammahalfy=400+r*sin(radians((start+last)/2));
  beta0x=500+r*cos(radians(start));beta0y=400+r*sin(radians(start));
  beta1x=500+r*cos(radians(last));beta1y=400+r*sin(radians(last));
  betahalfx=2*gammahalfx-(gamma0x+gamma1x)/2;betahalfy=2*gammahalfy-(gamma0y+gamma1y)/2;
  point(betahalfx,betahalfy);
  Bezier2D(beta0x,beta0y,betahalfx,betahalfy,beta1x,beta1y,n);
  Housedorf(100,start,last,beta0x,beta0y,betahalfx,betahalfy,beta1x,beta1y,num);}
void circle2D(float r,float n,float start,float last){
  strokeWeight(5);stroke(0);fill(255);ellipse(500,400,2*r,2*r);
  if(n>0){for(float i=0;i<=n;i++){
    strokeWeight(10);stroke(229,37,105);point(500+r*cos(radians(start+(last-start)/n*i)),400+r*sin(radians(start+(last-start)/n*i)));}}}
void Bezier2D(float x0,float y0,float x1,float y1,float x2,float y2,float num){
  float z,w,t=0;
  for(t=0;t<=1;t+=0.005){
    z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;
    stroke(255,0,0);strokeWeight(5);point(z,w);}}
void Housedorf(float r,float start,float last,float x0,float y0,float x1,float y1,float x2,float y2,float num){
  float t=start,d1=(last-start)/10,k=0,d2=0.1;
  int i,j;
  for(i=0;i<10;i++){k=d2*i;
    for(j=0;j<10;j++){
      H[i][j]=dist(500+r*cos(radians(t)),400+r*sin(radians(t)),x0*(1-k)*(1-k)+2*k*(1-k)*x1+k*k*x2,y0*(1-k)*(1-k)+2*k*(1-k)*y1+k*k*y2);t+=d1;
      if(min>=H[i][j]){min=H[i][j];}}
    t=start;if(maxmin<=min){maxmin=min;}min=100000;}
  M[(int)num]=maxmin;maxmin=0;
  stroke(255);fill(255);rect(200,700,900,900);
  stroke(0);fill(0);textSize(30);text("Hausdorff distance=",300,800);
  text(M[(int)num],600,800);}
void coordinate3D(){
  background(0);
  line3D_RGB(-300,0,0,300,0,0,255,255,255);
  line3D_RGB(0,-300,0,0,300,0,255,255,255);
  line3D_RGB(0,0,-300,0,0,300,255,255,255);
  textSize(20);stroke(255);fill(255,255,255);
  check3D(310,0,0);text("+x",500+A[0],500+A[1]);check3D(-310,0,0);text("-x",500+A[0],500+A[1]);
  check3D(0,310,0);text("+y",500+A[0],500+A[1]);check3D(0,-310,0);text("-y",500+A[0],500+A[1]);
  check3D(0,0,310);text("+z",500+A[0],500+A[1]);check3D(0,0,-310);text("-z",500+A[0],500+A[1]);
  strokeWeight(5);stroke(255);
    textSize(20);text("pi=",85,100);text("ceta=",85,130);
    text(pi,120,100);text(ceta,140,130);}
void point3D(float x,float y,float z){
  stroke(255);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));
  strokeWeight(10);stroke(255);point(500+A[0],500+A[1]);}
void point3D_RGB(float x,float y,float z,float R,float G,float B,float st){
  stroke(255);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));
  strokeWeight(st);stroke(R,G,B);point(500+A[0],500+A[1]);}
void line3D_RGB(float x,float y,float z,float w,float m,float n,float R,float G,float B){
  stroke(255);
  A[2]=x*cos(radians(ceta))-z*sin(radians(ceta));
  A[3]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));
  A[4]=w*cos(radians(ceta))-n*sin(radians(ceta));
  A[5]=m*cos(radians(pi))-w*sin(radians(pi))*sin(radians(ceta))-n*cos(radians(ceta))*sin(radians(pi));
  strokeWeight(5);stroke(R,G,B);line(500+A[2],500+A[3],500+A[4],500+A[5]);}
void check3D(float x,float y,float z){
  stroke(255);
  A[0]=x*cos(radians(ceta))-z*sin(radians(ceta));
  A[1]=y*cos(radians(pi))-x*sin(radians(pi))*sin(radians(ceta))-z*cos(radians(ceta))*sin(radians(pi));}
void Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num){
  strokeWeight(6);stroke(#08FF16);point3D(x0,y0,z0);
  fill(255,255,255);textSize(20);check3D(x0+10,y0-20,z0-20);text("P0_",500+A[0],500+A[1]);text((int)num,500+A[0]+35,500+A[1]);
  strokeWeight(6);stroke(#08FF16);point3D(x1,y1,z1);
  fill(255,255,255);textSize(20);check3D(x1+10,y1-20,z1-20);text("P1_",500+A[0],500+A[1]);text((int)num,500+A[0]+35,500+A[1]);
  strokeWeight(6);stroke(#08FF16);point3D(x2,y2,z2);
  fill(255,255,255);textSize(20);check3D(x2+10,y2-20,z2-20);text("P2_",500+A[0],500+A[1]);text((int)num,500+A[0]+35,500+A[1]);
  float z,w,k,t=0;
  for(t=0;t<=1;t+=0.005){
    z=t*t*x0+2*t*(1-t)*x1+(1-t)*(1-t)*x2;
    w=t*t*y0+2*t*(1-t)*y1+(1-t)*(1-t)*y2;
    k=t*t*z0+2*t*(1-t)*z1+(1-t)*(1-t)*z2;
    point3D_RGB(z,w,k,255,0,0,5);}}

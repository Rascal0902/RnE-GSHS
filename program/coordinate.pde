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

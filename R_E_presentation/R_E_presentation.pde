int oneloop=0,time=0,timeloop=0;
float slide=18,coordinateTRUE=1,size=1,coordinateBW=0,rangecover=100,locatex,locatey,coordinaterange=100;
float k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25;
PFont myFont;
long s,e;
void setup(){
  size(1800,900);background(255);
  myFont = createFont("바탕체", 32);textFont(myFont);
  setupcheck();
  loadimage();
  checkk();
   s=System.currentTimeMillis(); 

}
void draw(){
  if(mouseButton==LEFT) {if(oneloop==0){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis(); slide++; oneloop=1; timeloop=0; } background(255);} 
  if(mouseButton==RIGHT){if(oneloop==0){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis(); slide--; oneloop=1; timeloop=0; } background(255);}
  if(keyCode==ENTER){oneloop=0;keyCode=UP;}
  maketemplate(); time++;
  if(slide<=0) {slide=1;}
  if(slide==1) { if(timeloop==0){time=0;timeloop=1;} makeslide1();if(time>=k1 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==2) { if(timeloop==0){time=0;timeloop=1;} makeslide2();if(time>=k2 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==3) { if(timeloop==0){time=0;timeloop=1;} makeslide3();if(time>=k3 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==4) { if(timeloop==0){time=0;timeloop=1;} makeslide4();if(time>=k4 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==5) { if(timeloop==0){time=0;timeloop=1;} makeslide5();if(time>=k5 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==6) { if(timeloop==0){time=0;timeloop=1;} makeslide6();if(time>=k6 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==7) { if(timeloop==0){time=0;timeloop=1;} makeslide7();if(time>=k7 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==8) { if(timeloop==0){time=0;timeloop=1;} makeslide8();if(time>=k8 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==9) { if(timeloop==0){time=0;timeloop=1;} makeslide9();if(time>=k9 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==10){ if(timeloop==0){time=0;timeloop=1;} makeslide9_extra();if(time>=k10 ){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==11){ if(timeloop==0){time=0;timeloop=1;} makeslide10();if(time>=k11){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==12){ if(timeloop==0){time=0;timeloop=1;} makeslide11();if(time>=k12){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==13){ if(timeloop==0){time=0;timeloop=1;} makeslide12();if(time>=k13){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==14){ if(timeloop==0){time=0;timeloop=1;} makeslide13();if(time>=k14){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==15){ if(timeloop==0){time=0;timeloop=1;} makeslide14();if(time>=k15){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==16){ if(timeloop==0){time=0;timeloop=1;} makeslide15();if(time>=k16){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==17){ if(timeloop==0){time=0;timeloop=1;} makeslide16();if(time>=k17){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==18){ if(timeloop==0){time=0;timeloop=1;} makeslide17();if(time>=k18){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==19){ if(timeloop==0){time=0;timeloop=1;} makeslide18();if(time>=k19){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==20){ if(timeloop==0){time=0;timeloop=1;} makeslide19();if(time>=k20){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==21){ if(timeloop==0){time=0;timeloop=1;} makeslide20();if(time>=k21){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==22){ if(timeloop==0){time=0;timeloop=1;} makeslide21();if(time>=k22){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==23){ if(timeloop==0){time=0;timeloop=1;} makeslide22();if(time>=k23){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==24){ if(timeloop==0){time=0;timeloop=1;} makeslide22_extra1();if(time>=k24){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==25){ if(timeloop==0){time=0;timeloop=1;} makeslide23();if(time>=k25){e=System.currentTimeMillis();println("slide",(int)slide,"finished",e-s,"ms");s=System.currentTimeMillis();slide+=1;timeloop=0;background(255);}}
  if(slide==26){ if(timeloop==0){time=0;timeloop=1;} makeslide24(); }
  if(slide>=27){slide=27;}
}
void maketemplate(){
  if(slide==1){textAlign( CENTER , CENTER );
  fill(#422EFF);stroke(#422EFF);rect(150,220,1500,200);fill(0,0,0);stroke(0,0,0);}
  if(slide>=2 && slide<=25){textAlign( LEFT, CENTER );
  fill(#422EFF);stroke(#422EFF);rect(0,0,1800,100);fill(0,0,0);stroke(0,0,0);
  textSize(20);text((int)slide,1750,870);}
  if(slide==26){textAlign( CENTER , CENTER );
    fill(0);stroke(0);rect(0,0,1800,900);
    fill(255);stroke(255);textSize(80);text("감사합니다",900,400);fill(0);stroke(0);}
}
void makeslide1()
{
  size=1;textAlign( CENTER , CENTER );
  fill(255);stroke(255);textSize(80);text("베지어 곡면을 이용한 3D 모델링",890,320);fill(0);stroke(0);
  fill(0);stroke(0);textSize(30);text("20046 박건호 20071 윤상",1400,450);fill(0);stroke(0);
  fill(0);stroke(0);textSize(30);text("지도교사  김소연       ",1400,490);fill(0);stroke(0);
}
void makeslide2()
{
  size=1;textAlign( LEFT, CENTER );
  fill(255);stroke(255);textSize(60);text("Contents", 80,50);fill(0);stroke(0);
  fill(0);stroke(0);textSize(50);text("1.  서론",100,200);fill(0);stroke(0);
  fill(0);stroke(0);textSize(50);text("2.  연구 결과",100,300);fill(0);stroke(0);
  fill(0);stroke(0);textSize(50);text("3.  결론",100,400);fill(0);stroke(0);
  fill(0);stroke(0);rect(1000,200,500,500);
   locatex=1250;locatey=450;
   coordinaterange=200;
   coordinateTRUE=0;
   rangecover=345;
   setangle2();
   makecoordinate();
   checkrc33(0,21.0,241.0,-123.0,57.0,-13.0,193.0,200.0,-147.0,-100.0);
   checkrc33(1,-35.0,294.0,240.0,-199.0,-201.0,144.0,-44.0,208.0,-96.0);
   checkrc33(2,258.0,111.0,-222.0,260.0,109.0,-10.0,63.0,99.0,-130.0);
   Bezier_surface_line_rc33(255.0,0.0,0.0,0.0,0.05);
}
void makeslide3()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("서론 - 연구의 필요성", 80,50);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("3D 프린터, 홀로그램 및 VR과 AR은 지금도 활발하게 사용되고 있는 기술이고 앞으로도 많은 사람이 관심을 가질 분야이다.",100,200);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("이들이 실제로 상용화되기 위해서는 더 효율적으로 곡면을 다루기 위한 컴퓨터 그래픽 기술 특히 메모리로 인한 처리     ",100,250);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("시간을 줄이는 기술이 필수적이다. 본 연구는 obj파근사은 자동차, 선박, 비행기 등을 설계할 때 분야에서의 활용이 기대된다. ",100,300);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("",100,350);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("현재 3D 모델은, 저장, 프로그램 사용 등 많은 부분에서 대부분 obj파일 형식으로 사용된다. obj파일의 f 부분을 보면 곡면을",100,400);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("표현하기 위해 삼각형 혹은 사각형 분할을 이용한다는 것을 알 수 있다. 이러한 다각형 분할은 많은 장점이 있지만 베지어 곡면을",100,450);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("이용한 압축에 비해 구면과 같은 부드러운 곡면을 표현하는 능력이 떨어진다는 단점도 있다. 또한 베지어 분할은 베지어 곡면이 ",100,500);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("가지는 조절점이라는 고유한 성질 덕에 메모리도 적게 소모되어 더 효율적일 것이다.",100,550);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("",100,600);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("본 연구는 obj파일 형식으로 주어진 3차원 공간상의 곡면을 조각별로 분할하여 베지어 곡면을 통해 근사 및 압축하는 방법을 ",100,650);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("제시한다. 이는 obj파일에 비해 메모리 측면에서의 이점을 가진다. 혹은 자동차, 선박, 비행기 등을 설계할 때 이용되는 ",100,700);fill(0);stroke(0);
  fill(0);stroke(0);textSize(25);text("CAD(Computer Aided Design) 중에서도 수학적인 도구를 이용하는 CAGD 분야에서의 활용이 기대된다.",100,750);fill(0);stroke(0);
}
void makeslide4()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Bezier Surface", 80,50);fill(0);stroke(0);
  image(img1,100,200,1600,600);
}
void makeslide5()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Bezier Surface", 80,50);fill(0);stroke(0);
  fill(0);stroke(0);rect(100,150,650,650);
   locatex=425;locatey=475;
   coordinaterange=200;
   coordinateTRUE=0;
   rangecover=350;
   setangle5_1();
   makecoordinate();
   checkrc33(0, -200, -200, -200, -100, -300, 0, -200, -200, 200);
   checkrc33(1, 100, -100, -200, 200, -200, 0, 100, -100, 200);
   checkrc33(2, 200, 200, -200, 300, 100, 0, 200, 200, 200);
   Bezier_surface_line_rc33(255, 0, 0, size, 0.1);
   Bezier_surface_control_line_rc33(237, 0, 255, size);
   
   fill(0);stroke(0);rect(1050,150,650,650);
   locatex=1375;locatey=475;
   coordinaterange=200;
   coordinateTRUE=1;
   rangecover=350;
   setangle5_2();
   makecoordinate();
   checkrc33(0, -200, -200, -200, -100, -300, 0, -200, -200, 200);
   checkrc33(1, 100, -100, -200, 200, -200, 0, 100, -100, 200);
   checkrc33(2, 200, 200, -200, 300, 100, 0, 200, 200, 200);
   Bezier_surface_line_rc33(255, 0, 0, size, 0.1);
   Bezier_surface_control_line_rc33(237, 0, 255, size);
}
void makeslide6()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Convex Set", 80,50);fill(0);stroke(0);
  image(img2,100,200,1600,600);
}
void makeslide7()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Convex Set", 80,50);fill(0);stroke(0);
  image(img3,400,200,1000,600);
}
void makeslide8()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Newton-Raphson Method", 80,50);fill(0);stroke(0);
  image(img4,400,200,1000,600);
}
void makeslide9()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Newton-Raphson Method", 80,50);fill(0);stroke(0);
  image(img5,400,200,1000,600);
}
void makeslide9_extra()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - Gauss-Newton Method", 80,50);fill(0);stroke(0);
  image(img18,400,200,1000,600);
}
void makeslide10()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("obj", 80,50);fill(0);stroke(0);
  image(img6,50,200,1000,350);
  image(img7,1100,200,600,500);
  
}
void makeslide11()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("연구질문", 80,50);fill(0);stroke(0);
  image(img8,300,200,1200,600);
}
void makeslide12()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("분할방법", 80,50);fill(0);stroke(0);
   locatex=900;locatey=450;
   coordinaterange=300;
   coordinateTRUE=1;
   rangecover=330;
   setangle12_1();
   makecoordinate();
   cylinder(0,0,-200,200,200);
   if(time%80>=0  && time%80<20){part=1;}
   if(time%80>=20 && time%80<40){part=2;}
   if(time%80>=40 && time%80<60){part=3;}
   if(time%80>=60 && time%80<80){part=4;}
}
void makeslide13()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("분할 방법 - 사전 작업", 80,50);fill(0);stroke(0);
  image(img9,300,150,1200,350);
  image(img10,300,500,1200,300);
}
void makeslide14()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("분할 방법 - 사전 작업", 80,50);fill(0);stroke(0);
  image(img11,200,150,1400,650);
}
void makeslide15()
{
  size=2;
  fill(255);stroke(255);textSize(40);text("근사 방법", 80,50);fill(0);stroke(0);
  locatex=900;locatey=475;
   coordinaterange=250;
   coordinateTRUE=0;
   rangecover=350;
   setangle15_1();
   makecoordinate();
   line3D(0,100,-100,0,-100,-100,2,255,0,0,4);
   line3D(0,100,-100,-50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,100,-100,50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,-100,-100,50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(0,-100,-100,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(-50*sqrt(3),+100,50,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(50*sqrt(3),+100,50,50*sqrt(3),-100,50,2,255,0,0,4);
   for(float t=-PI/6;t<=PI/6;t+=0.01){
     point3D_RGB(100*sqrt(3)*sin(t),100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);
     point3D_RGB(100*sqrt(3)*sin(t),-100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);}
   if(time%320>=0  && time%320<40){part=1;}
   if(time%320>=40 && time%320<80){part=2;}
   if(time%320>=80 && time%320<120){part=3;}
   if(time%320>=120 && time%320<160){part=4;}
   if(time%320>=160 && time%320<200){part=5;}
   if(time%320>=200 && time%320<240){part=6;}
   if(time%320>=240 && time%320<280){part=7;}
   if(time%320>=280 && time%320<320){part=8;}
   if(part==1){}
   if(part==2)
 {
   triangle_3D(70,-110,40,     85,-110,40,       80,-90,40);
   triangle_3D(-70,-110,40,     -85,-110,40,       -80,-90,40);
   triangle_3D(70,+110,40,     85,+110,40,       80,+90,40);
   triangle_3D(-70,+110,40,     -85,+110,40,      -80,+90,40);
 }
  if(part==3)
 {
   triangle_3D(70,-110,40,     85,-110,40,       80,-90,40);
   triangle_3D(-70,-110,40,     -85,-110,40,       -80,-90,40);
   triangle_3D(70,+110,40,     85,+110,40,       80,+90,40);
   triangle_3D(-70,+110,40,     -85,+110,40,      -80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
 }
 if(part==4)
 {
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)165/sqrt(3),0,65,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-165/sqrt(3),0,65,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB(0,100,70,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
 }
 if(part==5)
 {
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
   
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,255,127,7,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
   point3D_RGB((float)165/sqrt(3),0,65  ,0,255,127,7,2);
   point3D_RGB((float)-165/sqrt(3),0,65   ,0,255,127,7,2);
   point3D_RGB(0,100,70   ,0,255,127,7,2);
   point3D_RGB(0,-100,25   ,0,255,127,7,2);
 }
 if(part==6){
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,255,127,7,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
   point3D_RGB((float)165/sqrt(3),0,65  ,0,255,127,7,2);
   point3D_RGB((float)-165/sqrt(3),0,65   ,0,255,127,7,2);
   point3D_RGB(0,100,70   ,0,255,127,7,2);
   point3D_RGB(0,-100,25   ,0,255,127,7,2);
   
   Bezier3D((float)140/sqrt(3),-100,40,(float)190/sqrt(3),0,90,(float)140/sqrt(3),100,40,0,size);
   Bezier3D((float)-140/sqrt(3),-100,40,(float)-190/sqrt(3),0,90,(float)-140/sqrt(3),100,40,0,size);
   Bezier3D((float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40,0,size);
   Bezier3D((float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40,0,size);
 }
   if(part==7)
   {
     Bezier3D((float)140/sqrt(3),-100,40,(float)190/sqrt(3),0,90,(float)140/sqrt(3),100,40,0,size);
     Bezier3D((float)-140/sqrt(3),-100,40,(float)-190/sqrt(3),0,90,(float)-140/sqrt(3),100,40,0,size);
     Bezier3D((float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40,0,size);
     Bezier3D((float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40,0,size);
     checkrc33(0,  (float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40);
     checkrc33(1,  (float)190/sqrt(3),0,90, 40,-40,100 ,(float)-190/sqrt(3),0,90);
     checkrc33(2,  (float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40);
     Bezier_surface_control_line_rc33(255.0,246.0,142.0,0.0);
     point3D_RGB(40,-40,100,0,127,255,6,2);
   }
   if(part==8)
   {
     checkrc33(0,  (float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40);
     checkrc33(1,  (float)190/sqrt(3),0,90, 40,-40,100 ,(float)-190/sqrt(3),0,90);
     checkrc33(2,  (float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40);
     Bezier_surface_line_rc33(255.0,0.0,255.0,0.0,0.2);
     Bezier_surface_control_line_rc33(255.0,246.0,142.0,0.0);
   }
}
void makeslide16()
{
  size=2;
  fill(255);stroke(255);textSize(40);text("근사 방법 - b11 제외", 80,50);fill(0);stroke(0);
  locatex=900;locatey=475;
   coordinaterange=250;
   coordinateTRUE=0;
   rangecover=350;
   setangle16_1();
   makecoordinate();
   line3D(0,100,-100,0,-100,-100,2,255,0,0,4);
   line3D(0,100,-100,-50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,100,-100,50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,-100,-100,50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(0,-100,-100,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(-50*sqrt(3),+100,50,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(50*sqrt(3),+100,50,50*sqrt(3),-100,50,2,255,0,0,4);
   for(float t=-PI/6;t<=PI/6;t+=0.01){
     point3D_RGB(100*sqrt(3)*sin(t),100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);
     point3D_RGB(100*sqrt(3)*sin(t),-100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);}
   if(time%240>=0  && time%240<40){part=1;}
   if(time%240>=40 && time%240<80){part=2;}
   if(time%240>=80 && time%240<120){part=3;}
   if(time%240>=120 && time%240<160){part=4;}
   if(time%240>=160 && time%240<200){part=5;}
   if(time%240>=200 && time%240<240){part=6;}
   if(part==1){}
   if(part==2)
 {
   triangle_3D(70,-110,40,     85,-110,40,       80,-90,40);
   triangle_3D(-70,-110,40,     -85,-110,40,       -80,-90,40);
   triangle_3D(70,+110,40,     85,+110,40,       80,+90,40);
   triangle_3D(-70,+110,40,     -85,+110,40,      -80,+90,40);
 }
  if(part==3)
 {
   triangle_3D(70,-110,40,     85,-110,40,       80,-90,40);
   triangle_3D(-70,-110,40,     -85,-110,40,       -80,-90,40);
   triangle_3D(70,+110,40,     85,+110,40,       80,+90,40);
   triangle_3D(-70,+110,40,     -85,+110,40,      -80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
 }
 if(part==4)
 {
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)165/sqrt(3),0,65,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-165/sqrt(3),0,65,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB(0,100,70,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
 }
 if(part==5)
 {
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,60,70,-110,40,     85,-110,40,       80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),-100,120,-70,-110,40,     -85,-110,40,       -80,-90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,60,70,+110,40,     85,+110,40,       80,+90,40);
   ray_triangle(0,-100,-100,100,100*sqrt(3),100,120,-70,+110,40,     -85,+110,40,      -80,+90,40);
   
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,255,127,7,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
   point3D_RGB((float)165/sqrt(3),0,65  ,0,255,127,7,2);
   point3D_RGB((float)-165/sqrt(3),0,65   ,0,255,127,7,2);
   point3D_RGB(0,100,70   ,0,255,127,7,2);
   point3D_RGB(0,-100,25   ,0,255,127,7,2);
 }
 if(part==6){
   point3D_RGB((float)155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),-50,55,0,0,255,4,2);
   point3D_RGB((float)-155/sqrt(3),50,55,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)-70/sqrt(3),100,60,0,0,255,4,2);
   point3D_RGB((float)70/sqrt(3),-100,30,0,0,255,4,2);
   point3D_RGB(0,-100,25,0,255,127,7,2);
   point3D_RGB((float)-70/sqrt(3),-100,30,0,0,255,4,2);
   
   point3D_RGB((float)165/sqrt(3),0,65  ,0,255,127,7,2);
   point3D_RGB((float)-165/sqrt(3),0,65   ,0,255,127,7,2);
   point3D_RGB(0,100,70   ,0,255,127,7,2);
   point3D_RGB(0,-100,25   ,0,255,127,7,2);
   
   Bezier3D((float)140/sqrt(3),-100,40,(float)190/sqrt(3),0,90,(float)140/sqrt(3),100,40,0,size);
   Bezier3D((float)-140/sqrt(3),-100,40,(float)-190/sqrt(3),0,90,(float)-140/sqrt(3),100,40,0,size);
   Bezier3D((float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40,0,size);
   Bezier3D((float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40,0,size);
 }
}
void makeslide17()
{
  size=2;
  fill(255);stroke(255);textSize(40);text("근사 방법 - b11", 80,50);fill(0);stroke(0);
   locatex=900;locatey=475;
   coordinaterange=250;
   coordinateTRUE=0;
   rangecover=350;
   setangle17_1();
   makecoordinate();
   line3D(0,100,-100,0,-100,-100,2,255,0,0,4);
   line3D(0,100,-100,-50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,100,-100,50*sqrt(3),+100,50,2,255,0,0,4);
   line3D(0,-100,-100,50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(0,-100,-100,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(-50*sqrt(3),+100,50,-50*sqrt(3),-100,50,2,255,0,0,4);
   line3D(50*sqrt(3),+100,50,50*sqrt(3),-100,50,2,255,0,0,4);
   for(float t=-PI/6;t<=PI/6;t+=0.01){
     point3D_RGB(100*sqrt(3)*sin(t),100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);
     point3D_RGB(100*sqrt(3)*sin(t),-100,100*sqrt(3)*cos(t)-100,255,0,0,4,2);}
   if(time%120>=0  && time%120<40){part=1;}
   if(time%120>=40 && time%120<80){part=2;}
   if(time%120>=80 && time%120<120){part=3;}
   if(part==1 && false)
   {
     Bezier3D((float)140/sqrt(3),-100,40,(float)190/sqrt(3),0,90,(float)140/sqrt(3),100,40,0,size);
     Bezier3D((float)-140/sqrt(3),-100,40,(float)-190/sqrt(3),0,90,(float)-140/sqrt(3),100,40,0,size);
     Bezier3D((float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40,0,size);
     Bezier3D((float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40,0,size);   
   }
   if(part==2 || true)
   {
     Bezier3D((float)140/sqrt(3),-100,40,(float)190/sqrt(3),0,90,(float)140/sqrt(3),100,40,0,size);
     Bezier3D((float)-140/sqrt(3),-100,40,(float)-190/sqrt(3),0,90,(float)-140/sqrt(3),100,40,0,size);
     Bezier3D((float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40,0,size);
     Bezier3D((float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40,0,size);
     checkrc33(0,  (float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40);
     checkrc33(1,  (float)190/sqrt(3),0,90, 40,-40,100 ,(float)-190/sqrt(3),0,90);
     checkrc33(2,  (float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40);
     Bezier_surface_control_line_rc33(0.0,127.0,255.0,0.0);
     point3D_RGB(40,-40,100,0,127,255,6,2);
   }
   if(part==3 && false)
   {
     checkrc33(0,  (float)140/sqrt(3),-100,40,0,-100,10,(float)-140/sqrt(3),-100,40);
     checkrc33(1,  (float)190/sqrt(3),0,90, 40,-40,100 ,(float)-190/sqrt(3),0,90);
     checkrc33(2,  (float)140/sqrt(3),+100,40,0,+100,100,(float)-140/sqrt(3),+100,40);
     Bezier_surface_line_rc33(255.0,0.0,255.0,0.0,0.2);
     Bezier_surface_control_line_rc33(255.0,246.0,142.0,0.0);
   }
}
void makeslide18()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("근사 방법 - b11", 80,50);fill(0);stroke(0);
  image(img12,400,200,1000,600);
}
void makeslide19()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("근사 방법 - b11", 80,50);fill(0);stroke(0);
  image(img13,400,200,1000,600);
}
void makeslide20()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("근사 방법 - b11", 80,50);fill(0);stroke(0);
  image(img14,200,200,1400,600);
}
void makeslide21()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("오차함수 - 하우스도르프", 80,50);fill(0);stroke(0);
  image(img15,100,200,1600,600);
}
void makeslide22()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("오차함수 - new", 80,50);fill(0);stroke(0);
 image(img16,200,200,1400,600);
}
void makeslide22_extra1()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("이론적 배경 - 충분한 근사 가능성", 80,50);fill(0);stroke(0);
  image(img19,400,200,1000,600);
}
void makeslide23()
{
  size=1;
  fill(255);stroke(255);textSize(40);text("결론", 80,50);fill(0);stroke(0);
  image(img17,400,200,1000,600);
}
void makeslide24()
{
}

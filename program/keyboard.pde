void keyPressed(){
  system.keyboardManager.onKeyPress(key,keyCode);
  if(windowup==7){ //itis==0 nothing itis==1 found itis==2 typing
  if((key!=DELETE)&&(key!=ENTER)&&(key!=BACKSPACE)){itis=2;if(searchlength>=40){}else{str=str+key;searchlength++;}}
  else if(key==DELETE){itis=2;str="";searchlength=0;}
  else if(key==ENTER){itis=1;istrue();str="";searchlength=0;}
  else if(key==BACKSPACE){if(str.length()!=0)str=str.substring(0,str.length()-1);}}
  if(windowup==5){if(Xcodelength<1){Xcodelength=1;}
  if(key==TAB){for(int i=0;i<=20;i++){win5[i]="";Xcodelength=1;}consolcheck=0;}
  else if(key==BACKSPACE){if(win5[Xcodelength].length()!=0)win5[Xcodelength]=win5[Xcodelength].substring(0,win5[Xcodelength].length()-1);}
  else if(key==DELETE){win5[Xcodelength]="";}
  else if(keyCode==UP){Xcodelength--;}
  else if(((key==ENTER)||(keyCode==DOWN))&&(Xcodelength<=19)){Xcodelength++;}
  else{if(key!=CODED){win5[Xcodelength]=win5[Xcodelength]+key;}}}}
  
void showstring(float x,float y){
  if(searchlength>=40){fill(255,0,0);textSize(20);text("max length!",930,110);}textSize(30);fill(0);text(str,x,y);
  if(itis==1){textSize(20); fill(0,255,0);text("Founded!",275,230); fill(0);text(ans,275,260);}
  else if(itis==0){textSize(20); fill(255,0,0);text("Not Founded!",275,230); fill(0);}}
  
void istrue(){//println(str);
  if(str.equals("bezier3d")==true){ans="Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)";itis=1;}
  else if(str.equals("beziersurfacecontrollinerc44")==true){ans="Bezier_surface_control_line_rc44(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziersurfacelinerc44")==true){ans="Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziersurfacecontrollinerc33")==true){ans="Bezier_surface_control_line_rc33(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziersurfacelinerc33")==true){ans="Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziertrianglecontrolline44")==true){ans="Bezier_triangle_control_line44(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziertriangleline44")==true){ans="Bezier_triangle_line44(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("beziertrianglecontrolline33")==true){ans="Bezier_triangle_control_line33(float R,float G,float B,float siz)";itis=1;}
  else if(str.equals("beziertriangleline33")==true){ans="Bezier_triangle_line33(float R,float G,float B,float siz,float gap)";itis=1;}
  else if(str.equals("checkrc44")==true){ans="checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)";itis=1;}
  else if(str.equals("checkrc33")==true){ans="checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)";itis=1;}
  else if(str.equals("checkt")==true){ans="checkt(int i,int j,int k,float x,float y,float z)";itis=1;}
  else if(str.equals("check3d")==true){ans="check3D(float x,float y,float z,float siz)";itis=1;}
  else if(str.equals("point3d")==true){ans="point3D(float x,float y,float z,float siz)";itis=1;}
  else if(str.equals("point3drgb")==true){ans="point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)";itis=1;}
  else if(str.equals("line3d")==true){ans="line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)";itis=1;}
  else if(str.equals("cuboid")==true){ans="Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)";itis=1;}
  else if(str.equals("spere")==true){ans="spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)";itis=1;}
  else{itis=0;}}
  
void showstring2(float x,float y){
  float z=y;if(Xcodelength==0){Xcodelength=1;}
  textSize(20);fill(0);text("lines=",150,40);fill(0);text(Xcodelength,210,40);text("NO SHIFT   go back -> TAB",350,40);
  if(Xcodelength>=20){Xcodelength=20;textSize(30);fill(255,0,0);text("OVERFLOW",160,685);fill(0);textSize(20);}
  for(int i=1;i<21;i++){strokeWeight(0.1);
    if(i==Xcodelength){fill(255,0,0);stroke(255,0,0);fill(175);stroke(125);rect(150,50+30*(i-1),1300,30);fill(255,0,0);stroke(255,0,0);}
    else{fill(0);stroke(0);fill(255);fill(255);rect(150,50+30*(i-1),1300,30);fill(0);stroke(0);}
    strokeWeight(5);text(i,x-45,z-5);z+=30;}
   for(int i=1;i<21;i++){textSize(25);fill(0);stroke(0);text(win5[i],x,y);y+=30;}}

void console(){
  for(int i=0;i<5;i++){println(" ");}
  println("consolestart",consoletempt);consoletempt++;
  for(int i=1;i<10000;i++){
  if(search(i)==1){println("search",i,"checked!");}
  else{println("search",i,"failed!!!");return;}}println("consol   end");consolcheck=1;return;}
  
int search(int k){
      String make="";
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){
      println("Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)");
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){println(makestr[i]);}}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){println("Bezier_surface_control_line_rc44(float R,float G,float B,float siz)");
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){println("Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){println("Bezier_surface_control_line_rc33(float R,float G,float B,float siz)");
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){println("Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){println("Bezier_triangle_control_line44(float R,float G,float B,float siz)");
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){println("Bezier_triangle_line44(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){println("Bezier_triangle_control_line33(float R,float G,float B,float siz)");
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){println("Bezier_triangle_line33(float R,float G,float B,float siz,float gap)");
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){println(makestr[i]);}}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){println("checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)");
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<13;i++){println(makestr[i]);}}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){println("checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)");
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<10;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){println("checkt(int i,int j,int k,float x,float y,float z)");
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<6;i++){println(makestr[i]);}}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){/*example_Bezier_rect()*/println("example_Bezier_rect()");}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){/*example_Bezier_tri()*/println("example_Bezier_tri()");}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){/*example_Bezier_line()*/println("example_Bezier_line()");}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){println("check3D(float x,float y,float z,float siz)");
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){println("point3D(float x,float y,float z,float siz)");String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){println(makestr[i]);}}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){println("point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)");
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<8;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){println("line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)");
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){println(makestr[i]);}}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){println("Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)");
      make=win5[k].substring(7,win5[k].length()-1);
      String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){println(makestr[i]);}}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){println("spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)");
      make=win5[k].substring(6,win5[k].length()-1);
      String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){println(makestr[i]);}}return 1;}
      
void consoledraw(){
  for(int k=1;k<10000;k++){ 
     String make="";float[] makefloat = new float[100];
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){//"Bezier3D(float x0,float y0,float z0,float x1,float y1,float z1,float x2,float y2,float z2, float num,float siz)"
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}for(int i=10;i<11;i++){makefloat[i]=inttry(makestr[i]);}
      Bezier3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){//"Bezier_surface_control_line_rc44(float R,float G,float B,float siz)"
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc44(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){//"Bezier_surface_line_rc44(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc44(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){//"Bezier_surface_control_line_rc33(float R,float G,float B,float siz)"
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc33(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){//"Bezier_surface_line_rc33(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc33(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){//"Bezier_triangle_control_line44(float R,float G,float B,float siz)"
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line44(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);} 
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){//"Bezier_triangle_line44(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line44(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){//"Bezier_triangle_control_line33(float R,float G,float B,float siz)"
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line33(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){//"Bezier_triangle_line33(float R,float G,float B,float siz,float gap)"
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<5;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line33(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){//"checkrc44(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3,float x4,float y4,float z4)"
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<13;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc44((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10],makefloat[11],makefloat[12]);}
       else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){//"checkrc33(int m,float x1,float y1,float z1,float x2,float y2,float z2,float x3,float y3,float z3)"
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<10;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc33((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){//"checkt(int i,int j,int k,float x,float y,float z)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<3;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=3;i<6;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkt((int)makefloat[0],(int)makefloat[1],(int)makefloat[2],makefloat[3],makefloat[4],makefloat[5]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){//"check3D(float x,float y,float z,float siz)"
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      check3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){//"point3D(float x,float y,float z,float siz)"
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=1;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){//"point3D_RGB(float x,float y,float z,float R,float G,float B,float st,float siz)"
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<8;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D_RGB(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){//"line3D(float x,float y,float z,float w,float m,float n,float siz,float R,float G,float B,float strokeweight)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<11;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      line3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){//"Cuboid(float x0,float y0,float z0,float dr,int R,int G,int B,float siz,float strokeweight)"
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      for(int i=4;i<7;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=7;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Cuboid(makefloat[0],makefloat[1],makefloat[2],makefloat[3],(int)makefloat[4],(int)makefloat[5],(int)makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){//"spere3D(float x,float y,float z,float R,float G,float B,float dr,float st,float siz)"
      make=win5[k].substring(6,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<9;i++){/*println(makestr[i].substring(0,1));*/if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}spere3D(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){/*example_Bezier_rect()*/example_Bezier_rect();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){/*example_Bezier_tri()*/example_Bezier_tri();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){/*example_Bezier_line()*/example_Bezier_line();}}
  }
  
void consoledraw2(){
  data[count]="#bezier vertex file #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
  data2[count2]="#error find file #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
  count++;count2++;
  for(int k=1;k<10000;k++){ String make="";float[] makefloat = new float[100];
      if((win5[k].length()>=8)&&(win5[k].substring(0,8)).equals("bezier3d")==true){
      make=win5[k].substring(9,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}for(int i=10;i<11;i++){makefloat[i]=inttry(makestr[i]);}
      Bezier3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc44")==true){
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc44")==true){
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=28)&&(win5[k].substring(0,28)).equals("beziersurfacecontrollinerc33")==true){
      make=win5[k].substring(29,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_control_line_rc33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=21)&&(win5[k].substring(0,21)).equals("beziersurfacelinerc33")==true){
      make=win5[k].substring(22,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_surface_line_rc33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline44")==true){
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);} 
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline44")==true){
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line44data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=27)&&(win5[k].substring(0,27)).equals("beziertrianglecontrolline33")==true){
      make=win5[k].substring(28,win5[k].length()-1);String[] makestr = split(make,',');//println(make);
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_control_line33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=20)&&(win5[k].substring(0,20)).equals("beziertriangleline33")==true){
      make=win5[k].substring(21,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<5;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Bezier_triangle_line33data(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4]);}
      else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc44")==true){
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<13;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc44data((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10],makefloat[11],makefloat[12]);}
       else if((win5[k].length()>=9)&&(win5[k].substring(0,9)).equals("checkrc33")==true){
      make=win5[k].substring(10,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<1;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=1;i<10;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checkrc33data((int)makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("checkt")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<3;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=3;i<6;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      checktdata((int)makefloat[0],(int)makefloat[1],(int)makefloat[2],makefloat[3],makefloat[4],makefloat[5]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("check3d")==true){
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      check3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=7)&&(win5[k].substring(0,7)).equals("point3d")==true){
      make=win5[k].substring(8,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=1;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3]);}
      else if((win5[k].length()>=10)&&(win5[k].substring(0,10)).equals("point3drgb")==true){
      make=win5[k].substring(11,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<8;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      point3D_RGBdata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("line3d")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<11;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      line3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8],makefloat[9],makefloat[10]);}
      else if((win5[k].length()>=6)&&(win5[k].substring(0,6)).equals("cuboid")==true){
      make=win5[k].substring(7,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<4;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      for(int i=4;i<7;i++){makefloat[i]=inttry(makestr[i]);}
      for(int i=7;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}
      Cuboiddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],(int)makefloat[4],(int)makefloat[5],(int)makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,5)).equals("spere")==true){
      make=win5[k].substring(6,win5[k].length()-1);String[] makestr = split(make,',');
      for(int i=0;i<9;i++){if((makestr[i].substring(0,1)).equals("-")){makefloat[i]=(-1)*floattry(makestr[i].substring(1,makestr[i].length()-1));}
      else{makefloat[i]=floattry(makestr[i]);}}spere3Ddata(makefloat[0],makefloat[1],makefloat[2],makefloat[3],makefloat[4],makefloat[5],makefloat[6],makefloat[7],makefloat[8]);}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierrect")==true){example_Bezier_rectdata();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,16)).equals("examplebeziertri")==true){example_Bezier_tridata();}
      else if((win5[k].length()>=5)&&(win5[k].substring(0,17)).equals("examplebezierline")==true){example_Bezier_linedata();}}
      data[count]="#length: "+Integer.toString(count);count++;
      for(int i=count;i<10000000;i++){data[i]="";}
      saveStrings("data\\bvffile.txt",data);
      data2[count2]="length: "+Integer.toString(count2);count2++;
      for(int i=count2;i<1000000;i++){data2[i]="";}
      saveStrings("data\\vertex.txt",data2);}
      
void showstring3(){
      stroke(0);fill(0);
      textSize(20);text("progress",150,125);
      for(int i=0;i<win4length;i++){
      textSize(20);
      text(win4[i],175,180+i*30);}}
  
void win4clear(){
  for(int i=0;i<win4length;i++){win4[i]="";}
  win4length=0;}

void win4push(String t){
  win4[win4length]=t;
  win4length++;}

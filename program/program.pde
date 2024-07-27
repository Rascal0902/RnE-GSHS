MadeSystem system;
void setup() {size(1500, 800);background(0);imagein();system = new TestSys();
  parseFile();//obj
  /*parseFile2();*/ //mtl
}
   
void draw() {if (oneloop1==0){setupcheck();oneloop1=1;}windowcheck();}
void windowcheck(){
  system.update();
  system.display();
  if (windowup==0){Bst.clear();image(img1, 0, 0, 1500, 800);
  image(img7,50,225,100,100);textSize(20);fill(0);text("preview", 65, 350);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=225)&&(mouseY<=325)) {windowup=1;}
  image(img2,50,50,100,100);textSize(20);fill(0);text("retrieve", 65, 175);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=50)&&(mouseY<=150))  {windowup=2;}
  image(img3,50,400,100,100);textSize(20);fill(0);text("save", 80, 525);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=400)&&(mouseY<=500)) {windowup=3;}
  image(img8,200,50,100,100);textSize(20);fill(0);text("compression", 190, 175);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=50)&&(mouseY<=150)) {windowup=4;}
  image(img5,200,225,100,100);textSize(20);fill(0);text("Xcode", 220, 350);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=225)&&(mouseY<=325)){windowup=5;}
  image(img4,50,575,100,100);textSize(20);fill(0);text("option", 70, 700);
  if ((mouseButton==LEFT)&&(mouseX>=50)&&(mouseX<=150)&&(mouseY>=575)&&(mouseY<=675)) {windowup=6;}
  image(img6,200,400,100,100);textSize(20);fill(0);text("function", 210, 525);
  if ((mouseButton==LEFT)&&(mouseX>=200)&&(mouseX<=300)&&(mouseY>=400)&&(mouseY<=500)){windowup=7;}
  }
  
  if (windowup==1){//preview
    image(img9,1425,725,50,50);strokeWeight(5);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}//Home Button
    if (mouseButton==LEFT) {setangle();makecoordinate();}make_bar();rebar();
    stroke(#FF05FC);fill(#FF05FC); rect(250, 20, 90, 20);fill(0);stroke(0);textSize(20);text("retrieve", 259, 38);strokeWeight(5);
    if ((mouseX>=250)&&(mouseX<=340)&&(mouseY>=20)&&(mouseY<=40)&&(mouseButton==LEFT)) {Bst.clear();consolcheck=2;}if(key==TAB){consolcheck=0;}
    if (consolcheck==0) {Bst.clear();
    if(key=='0'){ex=0;}if(key=='1'){ex=1;}if(key=='2'){ex=2;}if(key=='3'){ex=3;}if(key=='4'){ex=4;}if(key=='5'){ex=5;}if(key=='6'){ex=6;}if(key=='7'){ex=7;}if(key=='8'){ex=8;}if(key=='9'){ex=9;}
    if(ex==0){cylinder(0,0,-200,200,200);objshow();oneloop5=1;/*point3D_RGB(lightx, lighty, lightz, lightcolorR, lightcolorG, lightcolorB, 10, size);*/}
    if(ex==1){ex1subfunction();showexample();stroke(255);fill(255);stroke(0);fill(0);}
    if(ex==2){cylinder(0,0,-200,200,200);cylinder_ray(0,0,-200,200,200,100,100);triangle_3D(-200,0,0,0,200,0,0,0,150);ray_triangle(0,0,-256,256,200,100,100,-200,0,0,0,200,0,0,0,150);}
    if(ex==3){triangle_3D(-200,0,0,0,200,0,0,0,150);tri_gappoint(-200,0,0,0,200,0,0,0,150,0.1);}
    if(ex==4){show();}
    if(ex==5){ex5();}
    if(ex==6){ex6();}
    if(ex==7){example_Bezier_line();}if(ex==8){example_Bezier_rect();}if(ex==9){}}
    if (consolcheck==1) {if(oneloop2==0){consoledraw2();}oneloop2=1;consoledraw();cylinder(0,0,-200,200,200);}
    if (consolcheck==2) {parseFile3();}
  }
  
  if (windowup==2){background(255);fill(0);//retrieve
  rect(0,0,100,800);image(img2,0,0,100,100);
  textSize(20);fill(0);
  text("*obj,*.mtl is allowed", 150, 50);
  text("1. Copy paste your file into data\\textfile", 150, 100);
  text("2. check if it is allowed with Notepad", 150, 150);
  text("3. change your file name into objtestfile.obj,mtltestfile.mtl or something else", 150, 200);
  text("4. if it is something else, check obj-retrieve file name and insert the name", 150, 250);
  text("5. go to preview and check it is your model", 150, 300);
  text("# In your obj file find f and check it is rectangle", 150, 400);
  image(img9,1425,725,50,50);
  if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==3) {background(255);fill(0);//save
  rect(0,0,100,800);image(img3,0,0,100,100);  
  textSize(30);text("save files",150,50);
  fill(#00FCD0);stroke(#00FCD0);rect(150,200,600,300);fill(0);stroke(0);
  fill(#F8FC00);stroke(#F8FC00);rect(800,200,600,300);fill(0);stroke(0);
  textSize(50);text("save Xcode text",250,350);
  textSize(40);text("save compressed obj file",850,350);
  if ((mouseX>=150)&&(mouseX<=750)&&(mouseY>=200)&&(mouseY<=500)&&(mouseButton==LEFT)) {if(oneloop6==0){println();println("Xcode text saved");oneloop6=1;}
    win5[0]="#xcodefile #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
    saveStrings("data\\textfile\\codeout.txt", win5);}else{oneloop6=0;}
  if ((mouseX>=800)&&(mouseX<=1400)&&(mouseY>=200)&&(mouseY<=500)&&(mouseButton==LEFT)) {if(oneloop7==0){println();println("compressed obj file saved");oneloop7=1;}
    win5out[0]="#xcodefile #time: "+Integer.toString(year())+" / "+Integer.toString(month())+" / "+Integer.toString(day())+" / "+Integer.toString(hour())+" : "+Integer.toString(minute())+" : "+Integer.toString(second());
    saveStrings("data\\textfile\\compressed_obj_file.txt", win5out);}else{oneloop7=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==4) {background(255);fill(0);//compression
  rect(0,0,100,800);image(img8,0,0,100,100);
  strokeWeight(1);fill(#FA08E2);stroke(#FA08E2);rect(150, 20, 150, 40); fill(0);stroke(0); 
  textSize(25);text("compress", 170, 48);strokeWeight(5);
  fill(255);strokeWeight(5);rect(150,140,600,610);showstring3();
  if ((mouseX>=150)&&(mouseX<=300)&&(mouseY>=20)&&(mouseY<=60)){if(mouseButton==LEFT){if(oneloop3==0){go();}oneloop3=1;}}else{oneloop3=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==5) {background(255);fill(0);//Xcode
  rect(0,0,100,800);image(img5,0,0,100,100);
  fill(255);strokeWeight(5);rect(150,50,1300,600);
  showstring2(160, 75);
  fill(#FA08E2);stroke(#FA08E2);rect(250, 20, 90, 20);fill(0);stroke(0); 
  textSize(20);text("console", 260, 38);
  stroke(#0091FC);fill(#0091FC);rect(650, 20, 90, 20);fill(0);stroke(0);
  textSize(20);text("retrieve", 659, 38);strokeWeight(5);
  if ((mouseX>=650)&&(mouseX<=740)&&(mouseY>=20)&&(mouseY<=40)&&(mouseButton==LEFT)){
    BufferedReader codein = createReader("data\\textfile\\codein.txt");
    for (int i=0; i<10000; i++){win5[i]="";}
    String line = null;int linecnt=0;
    try {while ((line = codein.readLine()) != null) {/*println(line);*/
        if (linecnt!=0) {win5[linecnt]=line;}linecnt++;}
      codein.close();} 
    catch (IOException e){e.printStackTrace();}}
    if ((mouseX>=250)&&(mouseX<=340)&&(mouseY>=20)&&(mouseY<=40)) {if(mouseButton==LEFT){if (oneloop4==0){oneloop2=0;Bst.clear();console();}oneloop4=1;}} else {oneloop4=0;}
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==6) {background(255);//option
  textSize(20);fill(0);text("coordinate3D",150,200);  
  madeswitch1(300,183,255,0,0,0,255,0,80,20);
  textSize(20);fill(0);text("coordinateW/B",150,250); 
  madeswitch2(300,233,255,0,0,0,255,0,80,20);
  fill(120);rect(0,0,100,800);
  image(img4,0,0,100,100);
  textSize(30);fill(0);text("Option", 150, 50);
  textSize(20);fill(0);text("specular Reflectivity does not apply in preview.", 150, 700);
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
  
  if (windowup==7) {background(255);fill(0);//function
  rect(0,0,100,800);strokeWeight(1);
  image(img6,0,0,100,100);image(img10,250,10,1000,80);
  fill(255);strokeWeight(5);rect(260,200,1150,500);
  showstring(270,60);
  textSize(20);text("Delete? -> clear  enter? -> search", 270, 110);
  textSize(20);fill(255,0,0);text("NO SHIFT, NO CAPITAL!!",610,110);fill(0);
    image(img9, 1425, 725, 50, 50);
    if ((mouseButton==LEFT)&&(mouseX>=1425)&&(mouseX<=1475)&&(mouseY>=725)&&(mouseY<=775)) {windowup=0;}
  }
}

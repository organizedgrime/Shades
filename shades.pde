import ddf.minim.*;
AudioPlayer[] music;
AudioPlayer[] sfx;
Minim minim;
byte curtrack;

float secs;
float newtime;
float newtime2;
float lvlnumdelay;

//classes
levels_miscellaneous mi;
infinite in;
tutorial tut;
combiner com;
inventory inv;
menu me;
coloring col;

String[] numbers;

byte back = 1;

boolean monobg = true;

PGraphics bg;
PGraphics game;
PGraphics gbase;
PGraphics subs;
PGraphics thumb;
PFont font;

//background
short R;
short G;
short B;
short muterate;
int growth;
int bgsize;
backgrounds b;

//background 2
int counterMax = 100;
int opa = 127/2;
int counter;
int R2;
int G2;
int B2;
int xpos2;
int ypos2;
int xsize;
int ysize;
background2 b2;

//background 3
int xpos = 1;
int dir = 2;
short R3;
short G3;
short B3;
byte changeRate = 6;
background3 b3;

//backgroud 4
int R4, G4, B4, centerX, centerY, size4, speed;
float len;
PImage bgi;
background4 b4;

//background5
float size5, xpos5, ypos5, circCenterX, circCenterY, centerx, centery, size5GradSpeed, gradSpeed, xRelation, yRelation;
int R5,G5,B5, runTime;
background5 b5;

//background6
int R6, G6, B6, timer6, counter6;
float O6;
background6 b6;

//background8
int  timer8, counter8, colorNum;
float O8;
color bgcolor8;
background8 b8;

//SIZES
float[] size;

short maxSize;
float circMax;
float sizeplus;
byte invplus;
short smaller;

boolean firsttime;

//colors
byte colorId;
byte unlocked;
byte bgunlocked;

color lightpurple;
color purple;
color darkblue;
color blue;
color aqua;
color green;
color lightgreen;
color yellow;
color lightorange;
color orange;
color lightred;
color red;
color grey;
color black;
color base;
color cursecolor;

PImage[] cpthumbnails = new PImage[8];
PImage[] bgthumbnails = new PImage[7];

color selected;
byte selectedm=1;

color[] colors;
color[] level1;
color[] level2;
color[] level3;
color[] level4;

color[] randomlevel;

color[] savedlevel;

byte[] l1i;
byte[] l2i;
byte[] l3i;
byte[] l4i;
byte[] randomli;
byte[] savedli;

byte gridsize;
float space;

byte setting;

byte[] curli;

PImage musicicon;
PImage lock;

//other
byte optionsetting;
boolean options;
boolean hints;
boolean mute;
boolean career;
boolean infinity;
byte dilution[];
short curve;
boolean start;
boolean menu;
int delaycounter;

boolean[] circleOver;

byte curlevel;

//HIGHSCORES
byte maxScore[];

void setup() {
  //frame.setIconImage(getToolkit().getImage("images/icon.icns") );
  noCursor();
  fullScreen();
  if (width>height) {
    smaller = (short)height;
  } else {
    smaller= (short)width;
  }
  mi = new levels_miscellaneous();
  in = new infinite();
  tut = new tutorial();
  com = new combiner();
  inv = new inventory();
  me = new menu();
  col = new coloring();
  
  noStroke();
  cursecolor = black;
  maxSize = (short)(smaller/9);
  sizeplus = (short)(maxSize/20);
  invplus = 5;
  minim = new Minim(this);
  music = new AudioPlayer[3];
  sfx = new AudioPlayer[3];
  music[0] = minim.loadFile("audio/Shades1.mp3", 2048);
  music[1] = minim.loadFile("audio/Shades2.mp3", 2048);
  music[2] = minim.loadFile("audio/Shades3.mp3", 2048);
  music[curtrack].play();

  //BACKGROUND
  muterate = 40;
  growth = smaller/45;
  b = new backgrounds();
  bg = createGraphics(width, height);
  game = createGraphics(width, height);
  gbase = createGraphics(width, height);
  subs = createGraphics(width, height);
  thumb = createGraphics(width, height);
  
  //background 2
  b2 = new background2();
  R2=int(random(0,255));
  G2=int(random(0,255));
  B2=int(random(0,255));
  xpos2 = int(random(0,displayWidth));
  ypos2 = int(random(0,displayHeight));
  xsize = int(random(-displayWidth/2,displayWidth/2));
  ysize = int(random(-displayHeight/2,displayHeight/2));
  counter = 0;
  
  //BACKROUND 3
  b3 = new background3();
  R = (short)int(random(0,255));
  G = (short)int(random(0,255));
  B = (short)int(random(0,255));
  
  //BACKGROUND 4
  b4 = new background4();
  size4 = 500000000;
  speed = 15;
  bgi = get(0,0,displayWidth,displayHeight);

  //background5
  b5 = new background5();
  runTime = 100;
  size5 = 0;
  
  //background6
  b6 = new background6();
  O6 = 2;
  timer6 = 127;
  counter = 1500;
  
  //background8
  b8 = new background8();
  colorNum = 0;
  O8 = 8;
  timer8 = 64;
  counter8 = 1500;
  
  font = loadFont("AbeatbyKai-60.vlw");

  gbase.beginDraw();
  gbase.textFont(font, 32);
  gbase.rectMode(CENTER);
  gbase.textAlign(CENTER);
  gbase.noStroke();
  gbase.endDraw();

  firsttime = true;

  subs.beginDraw();
  subs.textFont(font, 32);
  subs.textAlign(LEFT);
  subs.textSize(smaller/12.85);
  subs.endDraw();

  textSize(smaller/22.5);
  textAlign(CENTER);

  R = (short)int(random(0, 255));
  G = (short)int(random(0, 255));
  B = (short)int(random(0, 255));
  bg.beginDraw();
  bg.fill(R, G, B);
  bg.noStroke();
  bg.endDraw();
  //BACKGROUND


  setting = 1;
  options=false;
  hints=true;
  colorId=1;
  dilution = new byte[2];
  maxScore = new byte[2];
  dilution[0] = 1;
  dilution[1] = 3;
  selectedm = 1;
  curlevel=1;
  delaycounter=0;
  game.beginDraw();
  game.noStroke();
  game.rectMode(CENTER);
  game.ellipseMode(CENTER);
  game.textFont(font, 32);
  game.textAlign(CENTER);
  game.endDraw();
  curve = (short)(smaller/24);
  
  lvlnumdelay = 2000;
  
  musicicon = loadImage("images/music.png");
  musicicon.resize(maxSize, maxSize);
  lock = loadImage("images/lock.png");
  lock.resize(maxSize, maxSize);

  gridsize=3;
  space = smaller/1.8/(smaller/1.8/maxSize);
  colors = new color[int(sq(gridsize))];
  curli = new byte[12];
  level1 = new color[9];
  l1i = new byte[12];
  level2 = new color[9];
  l2i = new byte[12];
  level3 = new color[9];
  l3i = new byte[12];
  level4 = new color[9];
  l4i = new byte[12];
  randomlevel = new color[int(sq(gridsize))];
  randomli = new byte[12];
  savedlevel = new color[int(sq(gridsize))];
  savedli = new byte[12];
  size = new float[int(sq(gridsize))];
  circleOver = new boolean[int(sq(gridsize))];
  numbers = new String[4];

  circMax = (maxSize / (gridsize / 3));
  
  tut.levels();
  start=false;
  selected = black;
  
  //THUMBNAILS
  
  cpthumbnails[0] = loadImage("images/cpthumbs/thumb1.png");
  cpthumbnails[1] = loadImage("images/cpthumbs/thumb2.png");
  cpthumbnails[2] = loadImage("images/cpthumbs/thumb3.png");
  cpthumbnails[3] = loadImage("images/cpthumbs/thumb4.png");
  cpthumbnails[4] = loadImage("images/cpthumbs/thumb5.png");
  cpthumbnails[5] = loadImage("images/cpthumbs/thumb6.png");
  cpthumbnails[6] = loadImage("images/cpthumbs/thumb7.png");
  cpthumbnails[7] = loadImage("images/cpthumbs/thumb8.png");
  
  bgthumbnails[0] = loadImage("images/bgthumbs/thumb1.png");
  bgthumbnails[1] = loadImage("images/bgthumbs/thumb2.png");
  bgthumbnails[2] = loadImage("images/bgthumbs/thumb3.png");
  bgthumbnails[3] = loadImage("images/bgthumbs/thumb4.png");
  bgthumbnails[4] = loadImage("images/bgthumbs/thumb5.png");
  bgthumbnails[5] = loadImage("images/bgthumbs/thumb6.png");
  bgthumbnails[6] = loadImage("images/bgthumbs/thumb7.png");
  
  
  for(int i = 0; i < cpthumbnails.length; i++){
  cpthumbnails[i].resize(maxSize,maxSize);
  }
  for(int i = 0; i < bgthumbnails.length; i++){
  bgthumbnails[i].resize(maxSize,maxSize);
  }
  
  if (fileExists(System.getProperty("user.home") + "/Library/Application Support/Dual Transit/Shades/data.txt") || fileExists("C:\\Users\\" + System.getProperty("user.home") + "\\AppData\\Local\\Dual Transit\\Shades\\data.txt") || fileExists("C:\\Documents and Settings\\" + System.getProperty("user.home") + "\\Local Settings\\Application Data\\Dual Transit\\Shades\\data.txt") || fileExists("/var/lib/Shades/data.txt")){
    
    
  if(System.getProperty("os.name").equals("Mac OS X")){
  numbers = loadStrings(System.getProperty("user.home") + "/Library/Application Support/Dual Transit/Shades/data.txt");
  }
  else if(System.getProperty("os.name").equals("Windows")){
    if(Integer.parseInt(System.getProperty("os.version"))>=6){
      numbers = loadStrings("C:\\Users\\" + System.getProperty("user.home") + "\\AppData\\Local\\Dual Transit\\Shades\\data.txt");
    }
    else{
      numbers = loadStrings("C:\\Documents and Settings\\" + System.getProperty("user.home") + "\\Local Settings\\Application Data\\Dual Transit\\Shades\\data.txt");
    }
  }
  else if(System.getProperty("os.name").equals("Linux")){
      numbers = loadStrings("/var/lib/Shades/data.txt");
  }
    
    
    
    //numbers = loadStrings(System.getProperty("user.home") + "/Library/Application Support/Dual Transit/Shades/data.txt");
    numbers = split(numbers[0],',');
    maxScore[0] = (byte)Integer.parseInt(numbers[0]);
    maxScore[1] = (byte)Integer.parseInt(numbers[1]);
    unlocked = (byte)Integer.parseInt(numbers[2]);
    bgunlocked = (byte)Integer.parseInt(numbers[3]);
  } else {
    maxScore[0] = 1;
    maxScore[1] = 3;
    unlocked = 1;
    bgunlocked = 1;
  }
  //colors
  col.makecolor();
}


int e = 0;
void draw() {
  //secs = millis();
   if(!((start==false && options==true))){
  displaylevel();
  achievementget();
   }
  cycle();
  if(monobg){
  background(127);
  }
  if(back==1){
    b.bg();
  }
  else if(back==2){
    b2.bg();
  }
  else if(back==3){
    b3.bg();
  }
  else if(back==4){
    b4.bg();
  }
  else if(back==5){
    b5.bg();
  }
  else if(back==6){
    b6.bg();
  }
  else if(back==8){
    b8.bg();
  }

  image(bg,0,0);
  image(game, 0, 0);
  image(gbase, 0, 0);
  image(thumb, 0, 0);
  me.menurestart();
  if (start==false && options==false) {
    gbase.beginDraw();
    gbase.fill(0);
    gbase.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);
    gbase.fill(255);
    gbase.textSize(smaller/9);
    gbase.text("Shades", width/2, height/2 - smaller/3.6 + (smaller/9)*2);
    gbase.textSize(smaller/30);
    gbase.text("Click to Begin", width/2, height/2 + smaller/5);
    gbase.endDraw();
  }
  if (menu) {
    me.menu();
  }
  if (col.colorsequal()==true && circleSize(circMax)==true && (curli[0]+curli[1]+curli[2]+curli[3]+curli[4]+curli[5]+curli[6]+curli[7]+curli[8]+curli[9]+curli[10]+curli[11]==0)) {
    mi.next();
  } else if (curli[0]+curli[1]+curli[2]+curli[3]+curli[4]+curli[5]+curli[6]+curli[7]+curli[8]+curli[9]+curli[10]+curli[11]==0) {
    while (e == 0) {
      mi.resetsize();
      e++;
    }
    if (circleSize(circMax) && start==true && menu==false)
    {
      selected = black;
      tut.levels();
      if (curlevel==-1) {
        in.inf(false);
      } else {
        tut.levels();
      }
      e=0;
    }
  }

  if (start&&menu!=true) {
    gamr();
  }
  inv.inventory(curli[0], curli[1], curli[2], curli[3], curli[4], curli[5], curli[6], curli[7], curli[8], curli[9], curli[10], curli[11]);
  if (start) {
    col.updater();
    col.dispcolors();
  } else {
    if (mousePressed) {
      gbase.clear();
      menu=true;
    }
  }
  
  if(curlevel!=-1){
  tut.subtitles();
  }
  
  image(subs, 0, 0);
  fill(cursecolor);
  ellipse(mouseX, mouseY, circMax/2, circMax/2);
}




void savegame() {
  numbers[0] = Integer.toString(maxScore[0]);
  numbers[1] = Integer.toString(maxScore[1]);
  numbers[2] = Integer.toString(unlocked);
  numbers[3] = Integer.toString(bgunlocked);
  String[] dat = new String[1];
  dat[0] = join(numbers,',');
  if(System.getProperty("os.name").equals("Mac OS X")){
  saveStrings(System.getProperty("user.home") + "/Library/Application Support/Dual Transit/Shades/data.txt", dat);
  }
  else if(System.getProperty("os.name").equals("Windows")){
    if(Integer.parseInt(System.getProperty("os.version"))>=6){
      saveStrings("C:\\Users\\" + System.getProperty("user.home") + "\\AppData\\Local\\Dual Transit\\Shades\\data.txt", dat);
    }
    else{
      saveStrings("C:\\Documents and Settings\\" + System.getProperty("user.home") + "\\Local Settings\\Application Data\\Dual Transit\\Shades\\data.txt", dat);
    }
  }
  else if(System.getProperty("os.name").equals("Linux")){
      saveStrings("/var/lib/Shades/data.txt", dat);
  }
  
}




int cur2=0;

boolean overCircle(float x, float y, float diameter) {

  if(dist(x,y,mouseX,mouseY)<=diameter/2){
  return true;
  }
  return false;
}


int inventorypos = 0;
int cur = 0;


boolean fileExists(String filename) {

  File file = new File(filename);

  if (!file.exists())
    return false;

  return true;
}

boolean circleSize(float s) {

  for (int i=0; i < int (sq (gridsize)); i++) {
    if (size[i]!=s) {
      return false;
    }
  }
  return true;
}

float xget(int j) {
  if (gridsize%2 == 0) {
    return ((width/2 - (smaller/1.8/gridsize * (gridsize/2))) + j * smaller/1.8/gridsize) + (smaller/1.8/gridsize)/2;
  }
  return (width/2 - (smaller/1.8/gridsize * (gridsize/2))) + j * smaller/1.8/gridsize;
}

float yget(int i) {
  if (gridsize%2 == 0) {
    return ((height/2 - (smaller/1.8/gridsize * (gridsize/2))) + i * smaller/1.8/gridsize) + (smaller/1.8/gridsize)/2;
  }
  return (height/2 - (smaller/1.8/gridsize * (gridsize/2))) + i * smaller/1.8/gridsize;
}


void mouseReleased() {
  if(options && optionsetting==0){
  //ARROWS
    gbase.pushMatrix();
    gbase.translate(maxSize/2,maxSize/2);
    gbase.textSize(smaller/20);
    if ((overCircle(width/2 + smaller/5.42, height/2, maxSize)==true)) {
      if (!(dilution[1]==maxScore[1] && dilution[0]==maxScore[0])) {
        dilution[0]++;
        if(dilution[0]==6){
        dilution[1]++;
        dilution[0]=1;
        }
        gbase.fill(255);
      } else {
        gbase.fill(0);
      }
      
      
      
      gbase.ellipse(width/2 + smaller/5.42, height/2, maxSize, maxSize);
      gbase.fill(0);
      gbase.text("+", width/2 + smaller/5.42, height/2 + smaller/72);

      firsttime=true;
    } else {
      
    }



    if ((overCircle(width/2 - smaller/5.42, height/2, maxSize)==true)) {
      if (!(dilution[1]==3 && dilution[0]==1)) {
        gbase.fill(255);
        dilution[0]--; 
        if(dilution[0]==0){
          if(dilution[1]>1){
          dilution[0]=5;
          dilution[1]--;
          }
          else{
          dilution[0]=1;
          }
        }
      } else {
        gbase.fill(0);
      }

      
    } else {
      gbase.fill(127);
      gbase.ellipse(width/2 - smaller/5.42, height/2, maxSize, maxSize);
      gbase.fill(255);
      gbase.text("-", width/2 - smaller/5.42, height/2 + smaller/72);
    }
    gbase.popMatrix();
    //END ARROWS
  }
  
  if (options==true) {
    if(optionsetting==0){
    if (overCircle(width/2, height/2 -smaller/5.42, maxSize)==true) {
      if (mute==true) {
        mute=false;
      } else {
        mute=true;
      }
      if (mute) {
        musicicon = loadImage("images/music off.png");
        musicicon.resize(maxSize, maxSize);
        music[curtrack].close();
      } else
      {
        musicicon = loadImage("images/music.png"); 
        musicicon.resize(maxSize, maxSize);
        music[0] = minim.loadFile("audio/Shades1.mp3", 2048);
        music[curtrack].play();
      }
    } else if (overCircle(width/2, height/2 + smaller/5.42, maxSize)==true) {
      if (hints==true) {
        hints=false;
      } else {
        hints=true;
      }
    }
  }
  
    if(optionsetting==0){
    if (overCircle(width/2-smaller/5.42, height/2-smaller/5.42, maxSize)){
    optionsetting=1;
    }
    else if (overCircle(width/2+smaller/5.42, height/2+smaller/5.42, maxSize)){
    optionsetting=2;
    }
    }
    else if(optionsetting==1){
    if (overCircle(width/2-smaller/5.42, height/2-smaller/5.42, maxSize)){
      colorId=1;
      col.makecolor();
      
    }
    else if (overCircle(width/2, height/2-smaller/5.42, maxSize) && unlocked>1){
      colorId=2;
      col.makecolor();
      
    }
    else if (overCircle(width/2+smaller/5.42, height/2-smaller/5.42, maxSize) && unlocked>2){
      colorId=3;
      col.makecolor();
      
    }
    
    else if (overCircle(width/2-smaller/5.42, height/2, maxSize) && unlocked>3){
      colorId=4;
      col.makecolor();
      
    }
    
    else if (overCircle(width/2+smaller/5.42, height/2, maxSize) && unlocked>4){
      colorId=5;
      col.makecolor();
      
    }
    
    else if (overCircle(width/2-smaller/5.42, height/2+smaller/5.42, maxSize) && unlocked>5){
      colorId=6;
      col.makecolor();
      
    }
    else if (overCircle(width/2, height/2+smaller/5.42, maxSize) && unlocked>6){
      colorId=7;
      col.makecolor();
      
    }
    else if (overCircle(width/2+smaller/5.42, height/2+smaller/5.42, maxSize) && unlocked>7){
      colorId=8;
      col.makecolor();
      
    }
    
    }
    else if (optionsetting==2){
      
    if (overCircle(width/2-smaller/5.42, height/2-smaller/5.42, maxSize)){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=1;
    }
    else if (overCircle(width/2, height/2-smaller/5.42, maxSize) && bgunlocked>1){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=2;
    }
    else if (overCircle(width/2+smaller/5.42, height/2-smaller/5.42, maxSize) && bgunlocked>2){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=3;
    }
    
    else if (overCircle(width/2-smaller/5.42, height/2, maxSize) && bgunlocked>3){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=4;
    }
    
    else if (overCircle(width/2+smaller/5.42, height/2, maxSize) && bgunlocked>4){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=5;
    }
    
    else if (overCircle(width/2-smaller/5.42, height/2+smaller/5.42, maxSize) && bgunlocked>5){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=6;
    }
    else if (overCircle(width/2, height/2+smaller/5.42, maxSize) && bgunlocked>6){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=7;
    }
    else if (overCircle(width/2+smaller/5.42, height/2+smaller/5.42, maxSize) && bgunlocked>7){
      bg.beginDraw();
      bg.clear();
      bg.endDraw();
      back=8;
    }
    
    }
    
    else if (optionsetting==3){
    
    }
    
    else if (optionsetting==4){
    
    }
  }
}


void keyPressed() {

  if (menu==true) {

    if (key==CODED) {
      if (options==false) {
        if (keyCode==UP) {

          if (selectedm>1) {
            selectedm-=1;
          } else
          {
            selectedm=5;
          }
        } else {

          if (keyCode==DOWN) {

            if (selectedm<5) {
              selectedm+=1;
            } else
            {
              selectedm=1;
            }
          }
        }
      }
    }  


    if (keyCode==ENTER) {
      sfx[0] = minim.loadFile("audio/enter.wav");
      sfx[0].play();
      if (options==false) {
        switch(selectedm) {

        case 1: 
          //TUTORIAL
          gridsize = 3;
          colors = new color[9];
          size = new float[9];
          circleOver = new boolean[9];
          circMax = (maxSize / (gridsize / 3));
          mi.resetsize();
          inv.clearinventory();
          curlevel=1;
          tut.levels();
          menu=false;
          gbase.clear();
          start=true;
          if (curlevel==-1) {
            in.inf(false);
          } else {
            tut.levels();
          }
          break;

        case 2:
          //INFINITY
          lvlnumdelay = 2000;
          newtime2=secs;
          mi.resetsize();
          firsttime=true;
          inv.clearinventory();
          curlevel=-1;
          infinity=true;
          career=false;
          menu=false;
          gbase.clear();
          start=true; 
          if (curlevel==-1) {
            in.inf(false);
          } else {
            tut.levels();
          }
          break;

        case 3:
          //CAREER
          lvlnumdelay = 2000;
          newtime2=secs;
          mi.resetsize();
          inv.clearinventory();
          career=true;
          infinity=false;
          curlevel=-1;
          menu=false;
          start=true; 
          gbase.clear();
          in.inf(false);
          break;


        case 4:
          //OPTIONS
          selectedm=1;
          setting=1;
          options=true;
          break;

        case 5:
          savegame();
          System.exit(0);

        default:
          System.exit(0);  
          break;
        }
      } else {
          
          if(optionsetting==0){
          selectedm=4;
          options=false;
          }
          else{
          optionsetting=0;
          }
      }
    }
  }
}

void cycle() {
  if (music[curtrack].isPlaying()==false && mute==false) {
    curtrack++;
    if (curtrack>2) {
      curtrack=0;
      music[0] = minim.loadFile("audio/Shades1.mp3", 2048);
      music[1] = minim.loadFile("audio/Shades2.mp3", 2048);
      music[2] = minim.loadFile("audio/Shades3.mp3", 2048);
    }
    music[curtrack].play();
  }
}


void achievementget(){
  secs = millis();
  thumb.beginDraw();
  thumb.rectMode(CENTER);
  thumb.textSize(25);
  if(secs-newtime<2000){
  thumb.fill(0);
  thumb.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);
  if((maxScore[0]*maxScore[1])%2==0){
  thumb.pushMatrix();
  thumb.translate(-bgthumbnails[unlocked].width/2,-bgthumbnails[unlocked].height/2);
  thumb.image(cpthumbnails[unlocked],width/2,height/2);
  thumb.popMatrix();
  thumb.fill(255);
  thumb.text("You Unlocked a New ColorPack!",width/2-smaller/5.5,height/2-smaller/5.42);
  }else{
  thumb.pushMatrix();
  thumb.translate(-bgthumbnails[unlocked].width/2,-bgthumbnails[unlocked].height/2);
  thumb.image(bgthumbnails[bgunlocked],width/2-smaller/5.5,height/2);
  thumb.popMatrix();
  thumb.fill(255);
  thumb.text("You Unlocked a New Background!",width/2-textWidth("You Unlocked a New Background!")/2,height/2-smaller/5.42);
  }
  }else{
  //thumb.clear();
  }
  thumb.endDraw();
}

void displaylevel(){
  thumb.beginDraw();
  thumb.textFont(font);
  thumb.textSize(50);
  thumb.rectMode(CENTER);
  if(secs-newtime2<lvlnumdelay){
  thumb.fill(0);
  thumb.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);
  thumb.fill(255);
  if(infinity){
  thumb.text(dilution[1] + " - " + dilution[0], width/2-textWidth(dilution[1] + " - " + dilution[0])/2, height/2);
  }
  else if(career){
  thumb.text(maxScore[1] + " - " + maxScore[0], width/2-textWidth(maxScore[1] + " - " + maxScore[0])/2, height/2);
  }
  }else{
  thumb.clear();
  }
  thumb.endDraw();
}
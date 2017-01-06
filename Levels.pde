class levels_miscellaneous{

int cur3=0;
void leveler() {
  gbase.beginDraw();
  if (hints==true) {
    gbase.fill(base);
  } else {
    gbase.fill(255);
  }
  gbase.endDraw();
  if (firsttime==false) {
    gbase.beginDraw();
    gbase.clear();
    gbase.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);
    gbase.endDraw();
  } else {
    game.beginDraw();
    game.fill(base);
    game.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);
    game.endDraw();
  }
  for (int i = 0; i < gridsize; i++) {
    for (int j = 0; j < gridsize; j++) {
      cur3++;
      eraseFunction(xget(j), yget(i));
    }
  }
  cur3 = 0;  

  if (infinity) {
    firsttime=false;
  }
}

void eraseFunction(float inx, float iny) {
  color c = color(0, 0);
  gbase.beginDraw();
  gbase.loadPixels();
  for (int x=0; x<gbase.width; x++) {
    for (int y=0; y<gbase.height; y++ ) {
      float distance = dist(x, y, inx, iny);
      if (distance <=(circMax/2)-1) {
        int loc = x + y*gbase.width;
        gbase.pixels[loc] = c;
      }
    }
  }
  gbase.updatePixels();
  gbase.endDraw();
}

void resetsize() {
  for (int i=0; i < size.length; i++) {
    size[i] = 0;
  }
}

void next() {
  lvlnumdelay = 4000;
  newtime2 = secs;
  if (curlevel!=-1) {
    curlevel++;
  }
  selected = black;
  if (curlevel==-1) {
    if(maxScore[0]==5){
    maxScore[0]=0;
    maxScore[1]++;
    }
    maxScore[0]++;
    
    if(career){
    //Display unlocked item
    if((maxScore[0]*maxScore[1])%2==0){
    unlocked++;
    }else{
    bgunlocked++;
    }
    newtime = secs;
    savegame();
    }
    in.inf(false);
  } else if(curlevel<5){
    tut.levels();
  }else{
      start=false;
      tut.levels();
      menu=true;
      curlevel=1;
  }
  resetsize();
}

}

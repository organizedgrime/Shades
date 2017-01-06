class coloring{

  color randomcolor() {
  int ran = int(random(0, 11));
  return inttocolor(ran);
}

color returncolor;
color inttocolor(int l) {

  if (l==0) {
    returncolor = lightpurple;
  } else if (l==1) {
    returncolor = purple;
  } else if (l==2) {
    returncolor = darkblue;
  } else if (l==3) {
    returncolor = blue;
  } else if (l==4) {
    returncolor = aqua;
  } else if (l==5) {
    returncolor = green;
  } else if (l==6) {
    returncolor = lightgreen;
  } else if (l==7) {
    returncolor = yellow;
  } else if (l==8) {
    returncolor = lightorange;
  } else if (l==9) {
    returncolor = orange;
  } else if (l==10) {
    returncolor = lightred;
  } else if (l==11) {
    returncolor = red;
  } else if (l==12) {
    returncolor = grey;
  }
  return returncolor;
}

int colortoint(color c) {

  if (c==lightpurple) {
    return 0;
  } else if (c==purple) {
    return 1;
  } else if (c==darkblue) {
    return 2;
  } else if (c==blue) {
    return 3;
  } else if (c==aqua) {
    return 4;
  } else if (c==green) {
    return 5;
  } else if (c==lightgreen) {
    return 6;
  } else if (c==yellow) {
    return 7;
  } else if (c==lightorange) {
    return 8;
  } else if (c==orange) {
    return 9;
  } else if (c==lightred) {
    return 10;
  } else if (c==red) {
    return 11;
  } else {
    return 12;
  }
}



void makecolor() {
  
  /*
  lightpurple = color();
  purple = color();
  darkblue = color();
  blue = color();
  aqua = color();
  green = color();
  lightgreen = color();
  yellow = color();
  lightorange = color();
  orange = color();
  lightred = color();
  red = color();
  */
  black = color(0, 0, 0);
  grey = color(109, 109, 109);
  
  if(colorId==1){
  lightpurple = color(136, 0, 81);
  purple = color(80, 0, 81);
  darkblue = color(3, 0, 81);
  blue = color(5, 31, 138);
  aqua = color(13, 84, 81);
  green = color(44, 136, 11);
  lightgreen = color(86, 200, 9);
  yellow = color(252, 255, 12);
  lightorange = color(249, 136, 10);
  orange = color(248, 79, 11);
  lightred = color(248, 24, 10);
  red = color(190, 0, 8);
  }
  else if(colorId==2){
  red = color(255,0,0);
  lightred = color(255,127,0);
  orange = color(255,255,0);
  lightorange = color(127,255,0);
  yellow = color(0,255,0);
  lightgreen = color(0,255,127);
  green = color(0,255,255);
  aqua =  color(0,127,255);
  blue = color(0,0,255);
  darkblue = color(127,0,255);
  purple = color(255,0,255);
  lightpurple = color(255,0,127);
  }
  
  else if(colorId==3){
  lightpurple = color(170,0,85);
  purple = color(170,0,170);
  darkblue = color(85,0,170);
  blue = color(0,0,170);
  aqua = color(0,85,170);
  green = color(0,170,170);
  lightgreen = color(0,170,85);
  yellow = color(0,170,0);
  lightorange = color(85,170,0);
  orange = color(170,170,0);
  lightred = color(170, 85,0);
  red = color(170,0,0);
  }
  
  else if(colorId==4){
  lightpurple = color(255,0,0);
  purple = color(255,0,85);
  darkblue = color(255,0,170);
  blue = color(255,0,255);
  aqua = color(255,85,255);
  green = color(255,170,255);
  lightgreen = color(255,255,255);
  yellow = color(255,255,170);
  lightorange = color(255,255,85);
  orange = color(255,255,0);
  lightred = color(255, 170,0);
  red = color(255,85,0);
  }
  
  else if(colorId==5){
  red = color(255,127,127);
  lightred = color(255,191,127);
  orange = color(255,255,127);
  lightorange = color(191,255,127);
  yellow = color(127,255,127);
  lightgreen = color(127,255,191);
  green = color(127,255,255);
  aqua =  color(127,191,255);
  blue = color(127,127,255);
  darkblue = color(191,127,255);
  purple = color(255,127,255);
  lightpurple = color(255,127,191);
  }
  
  else if(colorId==6){
  red = color(1,1,1);
  lightred = color(85,0,0);
  orange = color(170,0,0);
  lightorange = color(255,0,0);
  yellow = color(255,85,0);
  lightgreen = color(255,170,0);
  green = color(255,255,0);
  aqua =  color(170,255,0);
  blue = color(85,255,0);
  darkblue = color(0,255,0);
  purple = color(0,170,0);
  lightpurple = color(0,85,0);
  }
  else if(colorId==7){
  red = color(1,1,1);
  lightred = color(85,0,0);
  orange = color(170,0,0);
  lightorange = color(255,0,0);
  yellow = color(255,0,85);
  lightgreen = color(255,0,170);
  green = color(255,0,255);
  aqua =  color(170,0,255);
  blue = color(85,0,255);
  darkblue = color(0,0,255);
  purple = color(0,0,170);
  lightpurple = color(0,0,85);
  }

  else if(colorId==8){
  red = color(1,1,1);
  lightpurple = color(0,0,85);
  purple = color(0,0,170);
  darkblue = color(0,0,255);
  blue = color(0,85,255);
  aqua = color(0,170,255);
  green = color(0,255,255);
  lightgreen = color(0,255,170);
  yellow = color(0,255,85);
  lightorange = color(0,255,0);
  orange = color(0, 170,0);
  lightred = color(0, 85,0);
  }
  
  /*
  */
}

void updater() {
  for (int i = 0; i < gridsize; i++) {
    for (int j = 0; j < gridsize; j++) {

      game.fill(colors[cur]);
      cur2++;
      if (overCircle(xget(j), yget(i), size[j])) {
        circleOver[cur2-1] = true;
      } else {
        circleOver[cur2-1] = false;
      }
    }
  }
  cur2 = 0;
}

void dispcolors() {
  for (int i = 0; i < int (sq (gridsize)); i++) {
    if (size[i] < circMax) {
      size[i]+=sizeplus;
    }
  }

  game.beginDraw();
  for (int i = 0; i < gridsize; i++) {
    for (int j = 0; j < gridsize; j++) {

      game.fill(colors[cur]);
      cur++;
      game.ellipse(xget(j), yget(i), size[cur-1], size[cur-1]);
    }
  }
  cur = 0;
  game.endDraw();

  me.menurestart();
}

boolean colorsequal() {

  for (int i = 0; i < colors.length-1; i++) {
    if (colors[i+1]!=colors[i]) {
      return false;
    }
  }
  return true;
}

}

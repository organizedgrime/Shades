class infinite{
  
  void inf(boolean restart){
    
    if (career) {
      firsttime=true;
    }
    if (restart==false) {
      if (career) {
        gridsize = maxScore[1];
      } else {
        gridsize = dilution[1];
      }
      colors = new color[int(sq(gridsize))];
      randomlevel = new color[int(sq(gridsize))];
      savedlevel = new color[int(sq(gridsize))];
      size = new float[int(sq(gridsize))];
      circleOver = new boolean[int(sq(gridsize))];
      circMax = (maxSize / (gridsize / 3));
      sizeplus = circMax/20;
      if (career) {    
        in.levelgen(maxScore);
      } else if (infinity) {    
        in.levelgen(dilution);
      }
      colors = randomlevel;
      curli = randomli;
    }
    mi.leveler();
  }
  
  void levelgen(byte[] diluter) {
  

  base = col.inttocolor(int(random(0, 11)));
  //sets current colors to base
  for (int i = 0; i <= int (sq (gridsize)) - 1; i++) {
    randomlevel[i] = col.inttocolor(base);
  }

  for (int j = 0; j<diluter[0]; j++) {
    for (int i = 0; i <= int(sq(gridsize)) - 1; i++) {
      if(int(random(0,3))!=0){
      com.cpucombine(col.colortoint(randomlevel[i]));
      if (com.getinventory()!=-1 && com.getboard()!=black) {
        randomli[com.getinventory()]+=1;
        randomlevel[i]=com.getboard();
      }
      }
    }
  }
  savedlevel = randomlevel.clone();
  savedli = randomli.clone();
}
  
}


/*

  */

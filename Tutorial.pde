class tutorial{
  void levels(){
  //0: lightpurple
  //1: purple
  //2: darkblue
  //3: blue
  //4: aqua
  //5: green
  //6: lightgreen
  //7: yellow
  //8: lightorange
  //9: orange
  //10: lightred
  //11: red

  //LEVEL 1
  level1[0] = green;
  level1[1] = green;
  level1[2] = green;
  level1[3] = green;
  level1[4] = blue;
  level1[5] = green;
  level1[6] = green;
  level1[7] = green;
  level1[8] = green;
  l1i[7] = 1;


  //LEVEL 2

  level2[0] = red;
  level2[1] = purple;
  level2[2] = purple;
  level2[3] = purple;
  level2[4] = purple;
  level2[5] = purple;
  level2[6] = purple;
  level2[7] = purple;
  level2[8] = blue;

  l2i[1] = 4;

  //LEVEL 3

  level3[0] = grey;
  level3[1] = grey;
  level3[2] = grey;
  level3[3] = grey;
  level3[4] = red;
  level3[5] = grey;
  level3[6] = grey;
  level3[7] = grey;
  level3[8] = grey;

  l3i[5] = 1;


  //LEVEL 4
  level4[0] = purple;
  level4[1] = green;
  level4[2] = purple;
  level4[3] = purple;
  level4[4] = purple;
  level4[5] = purple;
  level4[6] = purple;
  level4[7] = yellow;
  level4[8] = purple;

  l4i[1] = 4;
  l4i[11] = 2;
    
    if (curlevel==1) {
      base = green;
      colors = level1;
      curli = l1i;
    }
    if (curlevel==2) {
      base = purple;
      colors = level2;
      curli = l2i;
    }
    if (curlevel==3) {
      base = grey;
      colors = level3;
      curli = l3i;
    }
    if (curlevel==4) {
      base = purple;
      colors = level4;
      curli = l4i;
    }
  mi.leveler();
  }

  void subtitles(){
  
  if (curlevel==1 && start==true) {
    subs.beginDraw();
    subs.clear();
    subs.text("Mix\ncolors to\nfill the\ngrid.", 0, 60);
    subs.endDraw();
  }
  if (curlevel==2 && start==true) {
    subs.beginDraw();
    subs.clear();
    subs.text("Colors\nmeet\nhalfway\nto mix,\nrounding\ntowards\nthe\nbucket.", 0, 60);
    subs.endDraw();
  }
  if (curlevel==3 && start==true) {
    subs.beginDraw();
    subs.clear();
    subs.text("Complementary colors make grey.", 0, 60);
    subs.text("(IRREVERSIBLE)", 0, height-60);
    subs.endDraw();
  }
  if (curlevel==4 && start==true) {
    subs.beginDraw();
    subs.clear();
    subs.text("Attempt\nyour first\npuzzle!!", 0, 60);
    subs.endDraw();
  }
  if (start==false) {
    subs.beginDraw();
    subs.clear();
    subs.endDraw();
  }
  
  }
}
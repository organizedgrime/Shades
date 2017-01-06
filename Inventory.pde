class inventory{


void inventory(int lp, int p, int db, int b, int a, int g, int lg, int y, int lo, int o, int lr, int r) {

  if(mousePressed){
  //TOP
  if (overCircle(width/2 - smaller/5.42, height/2 - smaller/2.71, maxSize)==true && curli[0] > 0) {
    selected=lightpurple;
  }
  
  else if (overCircle(width/2, height/2 - smaller/2.71, maxSize)==true && curli[1] > 0) {
    selected=purple;
  }

  else if (overCircle(width/2 + smaller/5.42, height/2 - smaller/2.71, maxSize)==true && curli[2] > 0) {
    selected=darkblue;
  }

  //RIGHT
 
  else if (overCircle(width/2 + smaller/2.71, height/2 - smaller/5.42, maxSize)==true && curli[3] > 0) {
    selected=blue;
  }
 
  else if (overCircle(width/2 + smaller/2.71, height/2, maxSize)==true && curli[4] > 0) {
    selected=aqua;
  }
  
  else if (overCircle(width/2 + smaller/2.71, height/2 + smaller/5.42, maxSize)==true && curli[5] > 0) {
    selected=green;
  }

  //BOTTOM
  
  else if (overCircle(width/2 + smaller/5.42, height/2 + smaller/2.71, maxSize)==true && curli[6] > 0) {
    selected=lightgreen;
  }
 
  else if (overCircle(width/2, height/2 + smaller/2.71, maxSize)==true && curli[7] > 0) {
    selected=yellow;
  }

  else if (overCircle(width/2 - smaller/5.42, height/2 + smaller/2.71, maxSize)==true && curli[8] > 0) {
    selected=lightorange;
  }

  //LEFT

  else if (overCircle(width/2 - smaller/2.71, height/2 + smaller/5.42, maxSize)==true && curli[9] > 0) {
    selected=orange;
  }
  
  else if (overCircle(width/2 - smaller/2.71, height/2, maxSize)==true && curli[10] > 0) {
    selected=lightred;
  }

  else if (overCircle(width/2 - smaller/2.71, height/2 - smaller/5.42, maxSize)==true && curli[11] > 0) {
    selected=red;
  }
  }
  
  
  game.beginDraw();
  game.fill(lightpurple);
  game.ellipse(width/2 - smaller/5.42, height/2 - smaller/2.71, maxSize, maxSize);
  
  game.fill(purple);
  game.ellipse(width/2, height/2 - smaller/2.71, maxSize, maxSize);

  game.fill(darkblue);
  game.ellipse(width/2 + smaller/5.42, height/2 - smaller/2.71, maxSize, maxSize);

  game.fill(blue);
  game.ellipse(width/2 + smaller/2.71, height/2 - smaller/5.42, maxSize, maxSize);
  
  game.fill(aqua);
  game.ellipse(width/2 + smaller/2.71, height/2, maxSize, maxSize);
  
  game.fill(green);
  game.ellipse(width/2 + smaller/2.71, height/2 + smaller/5.42, maxSize, maxSize);
  
  game.fill(lightgreen);
  game.ellipse(width/2 + smaller/5.42, height/2 + smaller/2.71, maxSize, maxSize);

  game.fill(yellow);
  game.ellipse(width/2, height/2 + smaller/2.71, maxSize, maxSize);
  
  game.fill(lightorange);
  game.ellipse(width/2 - smaller/5.42, height/2 + smaller/2.71, maxSize, maxSize);
  
  game.fill(orange);
  game.ellipse(width/2 - smaller/2.71, height/2 + smaller/5.42, maxSize, maxSize);
  
  game.fill(lightred);
  game.ellipse(width/2 - smaller/2.71, height/2, maxSize, maxSize);
  
  game.fill(red);
  game.ellipse(width/2 - smaller/2.71, height/2 - smaller/5.42, maxSize, maxSize);
  
  if(start==true){
  game.textSize(smaller/18);
  game.pushMatrix();
  game.translate(0, smaller/60);
  //SCORES
  game.fill(0);
  game.text(lp, width/2 - smaller/5.42, height/2 - smaller/2.71);

  game.text(p, width/2, height/2 - smaller/2.71);

  game.text(db, width/2 + smaller/5.42, height/2 - smaller/2.71);

  game.text(b, width/2 + smaller/2.71, height/2 - smaller/5.42);

  game.text(a, width/2 + smaller/2.71, height/2);

  game.text(g, width/2 + smaller/2.71, height/2 + smaller/5.42);

  game.text(lg, width/2 + smaller/5.42, height/2 + smaller/2.71);

  game.text(y, width/2, height/2 + smaller/2.71);

  game.text(lo, width/2 - smaller/5.42, height/2 + smaller/2.71);

  game.text(o, width/2 - smaller/2.71, height/2 + smaller/5.42);

  game.text(lr, width/2 - smaller/2.71, height/2);
  
  if(red==color(1,1,1)){game.fill(255);}
  game.text(r, width/2 - smaller/2.71, height/2 -smaller/5.42);

  game.popMatrix();
  }
  game.endDraw();
}

void clearinventory() {
  for (int i = 0; i < 12; i++) {
    curli[i]=0;
  }
}

}

void gamr() {

  for (int i = 0; i<curli.length; i++) {
    if (curli[i]==0 && i==col.colortoint(selected)) {
      selected=black;
    }
  }

  if (selected==lightpurple) {
    inventorypos=0; 
    cursecolor = lightpurple;
  }
  if (selected==purple) {
    inventorypos=1; 
    cursecolor = purple;
  }
  if (selected==darkblue) {
    inventorypos=2; 
    cursecolor = darkblue;
  }
  if (selected==blue) {
    inventorypos=3; 
    cursecolor = blue;
  }
  if (selected==aqua) {
    inventorypos=4; 
    cursecolor = aqua;
  }
  if (selected==green) {
    inventorypos=5; 
    cursecolor = green;
  }
  if (selected==lightgreen) {
    inventorypos=6; 
    cursecolor = lightgreen;
  }
  if (selected==yellow) {
    inventorypos=7; 
    cursecolor = yellow;
  }
  if (selected==lightorange) {
    inventorypos=8; 
    cursecolor = lightorange;
  }
  if (selected==orange) {
    inventorypos=9; 
    cursecolor = orange;
  }
  if (selected==lightred) {
    inventorypos=10; 
    cursecolor = lightred;
  }
  if (selected==red) {
    inventorypos=11; 
    cursecolor = red;
  } else if (selected==black) {
    cursecolor = black;
  }


  if (curli[inventorypos]>0) {
    for (int i = 0; i < int (sq (gridsize)); i++) {
      if (circleOver[i]==true && size[i]>=circMax && start==true && mousePressed && selected!=colors[i] && colors[i]!=grey) {
        colors[i]=com.combine(colors[i], selected);
        curli[inventorypos]--;
        size[i] = 0;
      }
    }
  }
}

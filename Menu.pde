class menu{

  void menu() {
  gbase.beginDraw();
  gbase.textSize(smaller/30);
  if (options==false) {
    gbase.clear();
    gbase.fill(0);
    gbase.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);

    if (selectedm==1) {
      gbase.fill(255);
    } else
    {
      gbase.fill(100);
    }
    gbase.text("Tutorial", width/2, height/2 - smaller/18);
    if (selectedm==2) {
      gbase.fill(255);
    } else
    {
      gbase.fill(100);
    }
    gbase.text("Infinity", width/2, height/2);
    if (selectedm==3) {
      gbase.fill(255);
    } else
    {
      gbase.fill(100);
    }
    gbase.text("Career", width/2, height/2 + smaller/18);
    if (selectedm==4) {
      gbase.fill(255);
    } else
    {
      gbase.fill(100);
    }
    gbase.text("Options", width/2, height/2 + smaller/9);
    if (selectedm==5) {
      gbase.fill(255);
    } else
    {
      gbase.fill(100);
    }
    gbase.text("Quit", width/2, height/2 + smaller/9 + smaller/18);
  } else {
    //options == true
    gbase.clear();
    gbase.fill(0);
    gbase.rect(width/2, height/2, smaller/1.8, smaller/1.8, curve, curve, curve, curve);

    //OPTIONS MENU
    fill(255);
    textSize(smaller/30);
    textFont(font, 32);
    text("Level", width/2, height/2- smaller/15);
    textSize(smaller/15);
    text(dilution[1] + " - " + dilution[0], width/2, height/2);

    gbase.textSize(smaller/30);
    gbase.fill(255);
    gbase.text("Back", width/2, height/2 + smaller/18);

    if(optionsetting==0){
    gbase.image(musicicon, width/2-(musicicon.width/2), height/2 -smaller/5.42-(musicicon.height/2));
    if (hints==false) {
      gbase.fill(0);
      gbase.ellipse(width/2, height/2 + smaller/5.42, maxSize, maxSize);
      gbase.fill(255);
    } else {
      gbase.fill(255);
      gbase.ellipse(width/2, height/2 + smaller/5.42, maxSize, maxSize);
      gbase.fill(0);
    }

    gbase.textSize(smaller/30);
    gbase.text("Hints", width/2, height/2 + smaller/5.42 + smaller/90);
    }
      if(optionsetting==0){
      if(mousePressed && overCircle(width/2 + smaller/5.42, height/2,  maxSize)){
      gbase.fill(0);
      }else{
      gbase.fill(127);
      }
      gbase.ellipse(width/2 + smaller/5.42, height/2, maxSize, maxSize);
      gbase.fill(255);
      gbase.text("+", width/2 + smaller/5.42, height/2 + smaller/72);
      firsttime=true;
      
      if(mousePressed && overCircle(width/2 - smaller/5.42, height/2, maxSize)){
      gbase.fill(0);
      }else{
      gbase.fill(127);
      }
      gbase.ellipse(width/2 - smaller/5.42, height/2, maxSize, maxSize);
      gbase.fill(255);
      gbase.text("-", width/2 - smaller/5.42, height/2 + smaller/72);
      }
    
    gbase.pushMatrix();
    gbase.translate(-maxSize/2, -maxSize/2);
    if(optionsetting==0){
    gbase.image(cpthumbnails[0], width/2-smaller/5.42, height/2 - smaller/5.42);
    gbase.image(bgthumbnails[0], width/2+smaller/5.42, height/2 + smaller/5.42);
    gbase.fill(255);
    
    
    
    
    }
    else if(optionsetting==1){
    gbase.image(cpthumbnails[7], width/2+smaller/5.42, height/2 + smaller/5.42);
    gbase.image(cpthumbnails[6], width/2, height/2 + smaller/5.42);
    gbase.image(cpthumbnails[5], width/2-smaller/5.42, height/2 + smaller/5.42);
    gbase.image(cpthumbnails[4], width/2+smaller/5.42, height/2);
    gbase.image(cpthumbnails[3], width/2-smaller/5.42, height/2);
    gbase.image(cpthumbnails[2], width/2+smaller/5.42, height/2 - smaller/5.42);
    gbase.image(cpthumbnails[1], width/2, height/2 - smaller/5.42);
    gbase.image(cpthumbnails[0], width/2-smaller/5.42, height/2 - smaller/5.42);
    
    if(unlocked==1){
    gbase.image(lock, width/2, height/2 - smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 - smaller/5.42);
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(unlocked==2){
    gbase.image(lock, width/2 + smaller/5.42, height/2 - smaller/5.42);
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(unlocked==3){
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(unlocked==4){
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(unlocked==5){
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==6){
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==7){
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    }
    else if(optionsetting==2){
    gbase.image(cpthumbnails[colorId-1], width/2+smaller/5.42, height/2 + smaller/5.42);
    gbase.image(bgthumbnails[6], width/2, height/2 + smaller/5.42);
    gbase.image(bgthumbnails[5], width/2-smaller/5.42, height/2 + smaller/5.42);
    gbase.image(bgthumbnails[4], width/2+smaller/5.42, height/2);
    gbase.image(bgthumbnails[3], width/2-smaller/5.42, height/2);
    gbase.image(bgthumbnails[2], width/2+smaller/5.42, height/2 - smaller/5.42);
    gbase.image(bgthumbnails[1], width/2, height/2 - smaller/5.42);
    gbase.image(bgthumbnails[0], width/2-smaller/5.42, height/2 - smaller/5.42);
    
    
    if(bgunlocked==1){
    gbase.image(lock, width/2, height/2 - smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 - smaller/5.42);
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==2){
    gbase.image(lock, width/2 + smaller/5.42, height/2 - smaller/5.42);
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==3){
    gbase.image(lock, width/2 - smaller/5.42, height/2);
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==4){
    gbase.image(lock, width/2 + smaller/5.42, height/2);
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==5){
    gbase.image(lock, width/2 - smaller/5.42, height/2 + smaller/5.42);
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==6){
    gbase.image(lock, width/2, height/2 + smaller/5.42);
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    else if(bgunlocked==7){
    gbase.image(lock, width/2 + smaller/5.42, height/2 + smaller/5.42);
    }
    
    }
    gbase.popMatrix();
    
  }
  gbase.endDraw();
}

void menurestart() {
  game.beginDraw();
  game.fill(0);

  game.ellipse(width/2 - smaller/2.71, height/2 - smaller/2.71, maxSize, maxSize);
  game.ellipse(width/2 + smaller/2.71, height/2 - smaller/2.71, maxSize, maxSize);
  game.ellipse(width/2 - smaller/2.71, height/2 + smaller/2.71, maxSize, maxSize);
  game.ellipse(width/2 + smaller/2.71, height/2 + smaller/2.71, maxSize, maxSize);

  game.fill(255);
  game.textSize(smaller/36);

  game.pushMatrix();
  game.translate(0, smaller/90);

  game.text("Menu", width/2 - smaller/2.71, height/2 - smaller/2.71);
  game.text("Restart", width/2 + smaller/2.71, height/2 - smaller/2.71);
  if(career==false){
  game.text("New", width/2 - smaller/2.71, height/2 + smaller/2.71);
  }
  game.text("Save", width/2 + smaller/2.71, height/2 + smaller/2.71);

  game.popMatrix();

  game.endDraw();
    
      
  
  if (mousePressed) {
    
    
    if (overCircle(width/2 - smaller/2.71, height/2 - smaller/2.71, maxSize)) {
      //menu
      circMax=100;
      selected=black;
      inv.clearinventory();
      start=false;
      options=false;
      optionsetting=0;
      menu=true;
    }
    if (overCircle(width/2 + smaller/2.71, height/2 - smaller/2.71, maxSize)) {
      //restart
      if (curlevel==-1) {
        colors = savedlevel.clone();
        curli = savedli.clone();
        for(int i = 0; i < savedli.length; i++){
        randomli[i]=0;
        }
      } else {
        tut.levels();
      }
      selected = black;
      if (curlevel==-1) {
        in.inf(true);
      } else {
        tut.levels();
      }
    }
    if (overCircle(width/2 - smaller/2.71, height/2 + smaller/2.71, maxSize) && career==false) {
      //new
      newtime2=secs;
      if (curlevel==-1 && circleSize(circMax)) {
        mi.resetsize();
        inv.clearinventory();
        if (curlevel==-1) {
          in.inf(false);
        } else {
          tut.levels();
        }
      }
    }
    if (overCircle(width/2 + smaller/2.71, height/2 + smaller/2.71, maxSize)) {
      //save
      savegame();
      text("SAVED", width/2, height/2);
    }
  }
}

}

class background3{

  void bg(){
  
    R3 += int(random(-changeRate,changeRate));
    G3 += int(random(-changeRate,changeRate));
    B3 += int(random(-changeRate,changeRate));
    
    bg.beginDraw();
    bg.fill(R,G,B);
    bg.rect(xpos,0,dir,displayHeight);
    bg.endDraw();
    if(xpos>displayWidth || xpos<0){
    dir = -dir;
    }
    xpos+=dir;
  
  }

}

class background2{

  void bg(){
  if(counter>counterMax){
    R2=int(random(0,255));
    G2=int(random(0,255));
    B2=int(random(0,255));
    
    xpos2 = int(random(0,displayWidth));
    ypos2 = int(random(0,displayHeight));
    xsize = int(random(-displayWidth/2,displayWidth/2));
    ysize = int(random(-displayHeight/2,displayHeight/2));
    
    counter = 0;
  }
  bg.beginDraw();
  bg.fill(R2,G2,B2,opa);
  counter+=100;
  bg.rect(xpos2,ypos2,xsize,ysize);
  bg.tint(255,255,255,245);
  bg.endDraw();
  }
}

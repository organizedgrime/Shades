class background4{
void bg(){
  if(size4<=len){
    bg.beginDraw();
    bg.background(bgi);
    bg.fill(R4,G4,B4,255-(((len-size4)*255)/len));
    bg.rect(0,0,displayWidth,displayHeight);
    bg.fill(R4,G4,B4,((len-size4)*255)/len);
    bg.ellipse(centerX,centerY,size4,size4);
    bg.endDraw();
    size4+= speed;
  }else{
    centerX = int(random(0,displayWidth));
    centerY = int(random(0,displayHeight));
    len = 0;
    if(dist(centerX,centerY,0,0)>len){len = dist(centerX,centerY,0,0);}
    if(dist(centerX,centerY,displayHeight,0)>len){len = dist(centerX,centerY,displayHeight,0);}
    if(dist(centerX,centerY,0,displayWidth) >len){len = dist(centerX,centerY,0,displayWidth);}
    if(dist(centerX,centerY,displayHeight,displayHeight)>len){len = dist(centerX,centerY,displayHeight,displayWidth);}
    len = 1.6*len;
    R4 = int(random(0,255));
    G4 = int(random(0,255));
    B4 = int(random(0,255));
    size4 = 0;
    bgi = get(0,0,displayWidth,displayHeight);
    monobg = false;
  }
}
}

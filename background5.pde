class background5{
void bg(){
  if(size5<=10){
    R5=int(random(0,255));
    G5=int(random(0,255));
    B5=int(random(0,255));
    
    xpos5 = int(random(0,displayWidth));
    ypos5 = int(random(0,displayHeight));
    while(size5<50){
      size5 = int(random(-displayWidth*3/4,displayWidth*3/4));
    }
    circCenterX = xpos5+size5/2;
    circCenterY = ypos5+size5/2;
    
    centerx = random(xpos5+(size5*sqrt(2))/2,xpos5+size5-(size5*sqrt(2)/2));
    centery = random(ypos5+(size5*sqrt(2))/2,ypos5+size5-(size5*sqrt(2)/2));
    
    size5GradSpeed = size5/runTime;
    gradSpeed = dist(circCenterX,circCenterY,centerx,centery)/runTime;
    
    if(centerx >xpos5+size5/2){
      xRelation = -1;
    }else{xRelation = 1;}
    
    if(centery > ypos5+size5/2){
      yRelation = -1;
    }else{yRelation = 1;}
  }
  size5-=size5GradSpeed;
  circCenterX += gradSpeed*xRelation;
  circCenterY += gradSpeed*yRelation;
  
  xpos5 = circCenterX-size5/2;
  ypos5 = circCenterY-size5/2;
  
  bg.beginDraw();
  bg.fill(R5,G5,B5,3);
  bg.ellipse(xpos5,ypos5,size5,size5);
  bg.endDraw();
}
}


class background6{

    void bg(){
    bg.beginDraw();
    if(counter6>timer6){
    R6 = int(random(0,255));
    G6 = int(random(0,255));
    B6 = int(random(0,255));
    bg.fill(R6,G6,B6,O6);
    counter6 = 0;
    }else{
    bg.rect(0,0,displayWidth,displayHeight);
    counter6++;
    }
    bg.endDraw();
    }
  
}

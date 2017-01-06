class background8{
void bg(){
  bg.beginDraw();
  if(counter8>timer8){
  switch (colorNum){
    case 0:
      bgcolor8 = lightpurple;
      break;
    case 1:
      bgcolor8 = purple;
      break;
    case 2:
      bgcolor8 = darkblue;
      break;
    case 3:
      bgcolor8 = blue;
      break;
    case 4:
      bgcolor8 = aqua;
      break;
    case 5:
      bgcolor8 = green;
      break;
    case 6:
      bgcolor8 = lightgreen;
      break;
    case 7:
      bgcolor8 = yellow;
      break;
    case 8:
      bgcolor8 = lightorange;
      break;
    case 9:
      bgcolor8 = orange;
      break;
    case 10:
      bgcolor8 = lightred;
      break;
    case 11:
      bgcolor8 = red;
      break;
  }
    bg.fill(red(bgcolor8),green(bgcolor8),blue(bgcolor8),O8);
    counter8 = 0;
    colorNum++;
    colorNum= colorNum%12;
  }else{
    bg.rect(0,0,displayWidth,displayHeight);
    counter8++;
  }
    bg.endDraw();
}
}

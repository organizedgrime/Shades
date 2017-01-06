class backgrounds {
  int x = int(random(-1, width+1));
  int y = int(random(-1, height+1));
  float bgsize = 0;
  float l = dist(0, 0, x, y)* 2;
  float r = dist(width, 0, x, y)* 2;
  float bl = dist(0, height, x, y)* 2;
  float br = dist(width, height, x, y)* 2;

  void bg() {
      
      bg.beginDraw();
      bg.ellipse(x, y, bgsize, bgsize);
      bg.endDraw();
      bgsize+=growth;
      
      if(bgsize/2>l && bgsize/2>r && bgsize/2>bl && bgsize/2>br){
      monobg = false;
      bgsize=0;
      
      x = int(random(-1, width+1));
      y = int(random(-1, height+1));
      
      l = dist(0, 0, x, y);
      r = dist(width, 0, x, y);
      bl = dist(0, height, x, y);
      br = dist(width, height, x, y);
      
      
      R+=int(random(-muterate,muterate));
      G+=int(random(-muterate,muterate));
      B+=int(random(-muterate,muterate));
      
      bg.beginDraw();
      bg.fill(R,G,B);
      bg.endDraw();
      if(R>255){
      R-=muterate;
      }
      if(G>255){
      G-=muterate;
      }
      if(B>255){
      B-=muterate;
      }
      
      if(R<0){
      R+=muterate;
      }
      if(G<0){
      G+=muterate;
      }
      if(B<0){
      B+=muterate;
      }
     
      }
  }
}


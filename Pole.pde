class pole {
  float xpole;
  float ypole;
  float xsize;
  float ysize;
  Ball b = new Ball();
  pole() {
    xpole = random(width+25, width+70);
    ypole = height;
    xsize = 20;
    ysize = random(20, height/4);
  }
  void poleShow() {
      fill(0, 255, 0);
    rect(xpole, ypole, xsize, -ysize);
    xpole--;
  } 
  boolean poleUpdate() { 
    if (b.xpos+b.size/2 > xpole && b.xpos-b.size/2 < xpole+xsize &&  b.ypos+b.size > ypole) 
         return true;
     else
      return false;
  }
  void poleDelete() {
    if (xpole < 0)
      list.remove(this);
  }
}
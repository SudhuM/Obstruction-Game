class Ball {
  private float xpos;
  private float ypos;
  private float size =20;
  private float ygrav =0;
  private float Constrain = height*3/4-30; 
  Ball() {
    xpos = random(width/4, width/2)-size/2;
    ypos =  height-size/2;
  }
  void createBall() {
    noStroke();
    fill(255);   
    ellipse(xpos, ypos, size, size);
  }
  void Update() {
    //    xpos +=xspeed;
    if (ypos > height-size/2) {
      ypos =height-size/2;
    }
    if(ypos < Constrain){
      ypos = Constrain;
    }
    ypos+=ygrav;
  }
}
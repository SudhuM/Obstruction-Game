Ball b;
pole p;
int score = 0;
ArrayList<pole> list = new ArrayList<pole>();

void setup() {
  size(640, 480);
  frameRate(70); 
  b = new Ball();
  pole p = new pole();
  list.add(p);
}
void draw() {
  background(0);
  b.createBall();
  b.Update();
  pole p1 = new pole();
  if (frameCount % 200== 0) {
    list.add(p1);
}
  for (int x=0; x<list.size(); x++) {
    p = list.get(x);
    p.poleShow();
    if(p.poleUpdate()){
    textAlign(CENTER); fill(255, 0, 0);textSize(18); /* ---> */ text("GAME OVER!!", width/2, height/4);
    fill(255, 150, 60); textSize(14); /* ---> */
    text("Press Enter to Continue..", width/2, height/2);
    text("Press x to Exit..", width/2, height/2+30); 
    p.poleDelete();
    noLoop();
     }
  } 
} 
void keyPressed() {
  if (key == ' ') {
    b.ygrav=-4;
  }
 else if (key == 'x') {
    exit();
  } else if (keyCode == ENTER) {
    loop();
  } 
}
void keyReleased() {
  b.ygrav=3;
}
PFont myfont, otracosat;
void setup(){
  size(500,500);
  myfont=loadFont("IBMPlexSans-Medium-48.vlw");
  otracosat=loadFont("IBMPlexSans-Thin-48.vlw");
}
void draw(){
  background(0);
  textFont(otracosat,10);
  line(0,0,0,100);
  text("paraula",0,100);
}

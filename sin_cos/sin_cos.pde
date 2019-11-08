float movx, movy;
void setup() {
  frameRate(2);
  size(500, 500);
}

void draw() {
  background(0);
  pushMatrix();
  stroke(255);
  movx=sin(frameCount)*20.2;
  movy=cos(frameCount)*20.2;
  println(movy);
  translate(width/2, height/2);
  line(0,0,movx, movy);
  popMatrix();
}

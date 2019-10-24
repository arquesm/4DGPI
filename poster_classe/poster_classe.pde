import processing.pdf.*;
PFont myfont;
int i=0;
String[] fontList = PFont.list();
void setup() {
  frameRate(3);
  size(450, 636);
  printArray(fontList);
}
void draw() {
  background(255);
  //cara1(random(width), random(height));
  float rx=random(width-150);
  float ry=random(height-300);
  float rx1=random(width-150);
  float ry1=random(height-300);
  float rx2=random(width-150);
  float ry2=random(height-300);
  sergio(int(rx), int(ry));
  sergio(int(rx1), int(ry1));
  sergio(int(rx2), int(ry2));
  titol(20, height-60);
  //exit();
}
void cara1(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(100, 20, 0);
  rect(0, 0, 100, 200);
  arc(10, 30, 40, 40, radians(180), radians(360));
  arc(50, 30, 40, 40, radians(180), radians(360));
  arc(50, 120, 50, 50, radians(0), radians(180));
  popMatrix();
}

void sergio(int posx, int posy) {
  pushMatrix();
  translate(posx, posy);
  scale(0.5);
  fill(255);
  rect(180, 120, 200, 250);
  /*pelo*/
  fill(0);
  triangle(220, 120, 200, 50, 110, 150);
  triangle(350, 120, 200, 50, 220, 120);
  triangle(350, 120, 300, 50, 200, 50);
  triangle(400, 200, 400, 70, 300, 50); 
  strokeWeight(3);
  stroke(0);
  /*oreja*/
  fill(255);
  rect(365, 180, 30, 60);
  /*ojos*/
  noFill();
  arc(220, 200, 40, 40, radians(180), radians(360));
  arc(320, 200, 40, 40, radians(180), radians(360));
  /*barba*/
  fill(0);
  rect(180, 260, 170, 140);
  triangle(340, 260, 350, 400, 365, 240);
  popMatrix();
}

void titol(int x, int y) {
  pushMatrix();
  translate(x, y);
  if (i<fontList.length) {
    i++;
    println(i);
    myfont=createFont(fontList[636], 32);
    textFont(myfont);
    textSize(25);
    text("classe 2019/20", 0, 0);
    textSize(20);
    text("Alba/Isa/Sergio/Laura/", 0, 40);
  } 
  popMatrix();
}


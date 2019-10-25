import processing.video.*;
import com.hamoid.*;

VideoExport videoExport;

void setup() {
  size(500, 500);
  strokeWeight(2);
  noFill();
  
  videoExport = new VideoExport(this, "vm.mp4");
  videoExport.setFrameRate(30);  
  videoExport.startMovie();
}

void draw() {
  background(255);
  for (int posx=50; posx<width; posx=posx+100) {
    for(int posy=50; posy<height; posy=posy+100){
    qr(posx, posy);
    }
  }
  //noLoop();
  videoExport.saveFrame();
}

void qr(int x, int y) {
  rectMode(CENTER);
  pushMatrix();
  translate(x, y);
  for (float t=0; t<100; t=t+6) {
    rect(0, 0, 5+t+random(30), 5+t+random(35));
  }
  popMatrix();
}

void keyPressed() {
  if (key == 'q') {
    videoExport.endMovie();
    exit();
  }
}

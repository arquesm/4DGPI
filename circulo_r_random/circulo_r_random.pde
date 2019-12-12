float r=10;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);

  //r=map(mouseX,0,width, 10, 30);

  for (float x_=0; x_<width; x_=x_+r+10) {
    for (float y_=0; y_<height; y_=y_+r+10) {
      if (mouseX<width/4) {
        r=random(10, 15);
      } else if (mouseX<(width/4*2)) {
        r=random(10, 40);
      } else {
        r=20;
      }
      cc(x_, y_, r);
    }
  }
}

void cc(float x, float y, float radio) {
  ellipse(x, y, radio, radio);
}

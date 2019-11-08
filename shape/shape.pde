PShape quadrats;
PShape cercles;
PShape linees;
PShape l;
PShape gl=createShape(GROUP);

void setup() {
  size(500, 500);
  l=createShape(RECT, 0, 0, 100, 100);
}
void draw() {

  shape(l, 30, 30);
}

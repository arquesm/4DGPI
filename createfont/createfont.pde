PFont myfont;
int i=0;
String[] fontlist=PFont.list();
void setup() {
  frameRate(8);
  size(500, 500);
  printArray(fontlist);
}

void draw() {
  background(100);

  if (i<fontlist.length) {
    i++;
    println(i);
    myfont=createFont(fontlist[i], 32);
    textFont(myfont);
    text(fontlist[i], 10, 100);
  }  
}

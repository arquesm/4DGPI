
//1 dibuix-esbossos del sistema gràfic.
//2 passar els elements del dibuix a programació bàsica: line, rect, trian,...
//3 PShape
//4 exportar
//5 proves impreses

PShape ics;
PShape l1;
PShape l2;
void setup() {
  size(500, 500);
  l1=createShape(LINE,0,0,100,100);
  l2=createShape(LINE,0,100,100,0);
  ics=createShape(GROUP);
  ics.addChild(l1);
  ics.addChild(l2);
}
void draw() {
  shape(ics);
  //ics
  //line(0,0,100,100);
  //line(0,100,100,0);
  //quadrat
  /*rect();
  rect();
  rect();*/
  
}

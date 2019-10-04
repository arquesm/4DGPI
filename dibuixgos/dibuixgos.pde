int fons;
void setup() {
  size(500, 500);
}
void draw() {
  background(fons);
  /*cos*/
  noStroke();
  fill(255);
  ellipse(210, 90, 240, 120);
  /*cap*/
  rect(0, 0, 120, 60);
  stroke(0);
  /*nas*/
  fill(0);
  rect(0, 0, 10, 10);

  noFill();
  //triangle(200, 200, 300, 200, 250, 250);
  strokeWeight(2);
  noFill();
  if (mousePressed==true) {
    point(60, 15);
    point(90, 15);

    fons=#F22EE6;
    line(120, 120, 100, 220);
    line(120, 120, 140, 220);

    line(280, 120, 280, 220);
    line(300, 120, 300, 220);
  } else {
    fons=#2EF292;
    arc(90, 15, 10, 10, radians(180), radians(360));
    arc(60, 15, 10, 10, radians(180), radians(360));

    line(120, 120, 120, 220);
    line(120, 120, 140, 220);

    line(280, 120, 280, 220);
    line(300, 120, 300, 220);
  }
}

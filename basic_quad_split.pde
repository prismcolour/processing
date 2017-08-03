// Basic quad split 

int w = 200;
int h = 50;

void setup() {
 size(640, 320);
}

void draw() {
 background(125);
 fill(255);
 stroke(0);
 rectMode(CENTER);
 rect(width/2, height/2, w, h);
 // midlines for canvas
 stroke(255, 0, 0);
 line(0, height/2, width, height/2);
 line(width/2, 0, width/2, height);

 // boundaries for rectangle
 stroke(0,255,255);
 line(width/2-w/2, 0, width/2-w/2, height);
 line(width/2+w/2, 0, width/2+w/2, height);
 line(0, height/2-h/2, width, height/2-h/2);
 line(0, height/2+h/2, width, height/2+h/2);

 //if (mouseX < width/2) {
 //ellipse(0, 0, 100, 100); // left side
 //} else {
 //ellipse (640, 0, 100, 100); // right side
 //}

 //if (mouseY < height/2) {
 //ellipse(0, 0, 100, 100); // top
 //} else {
 //ellipse(0, 320, 100, 100); // bottom
 //}

 // Combined split quadrants - basic 

 //stroke(255);
 //if((mouseX < width/2) && (mouseY < height/2)) {
 //  ellipse(0, 0, 100, 100); } 
 //  else if ((mouseX < width/2) && (mouseY > height/2)) {
 //  ellipse(0, 320, 100, 100);
 //  } else if ((mouseX > width/2) && (mouseY < height/2)) {
 //  ellipse(640, 0, 100, 100); }
 //  else if ((mouseX > width/2) && (mouseY > height/2)) {
 //  ellipse(640, 320, 100, 100);} else {}

 // rect markers
 //fill(0);
 //stroke(0);
 //rect(width/2-w/4, height/2-h/4, 5, 5);
 //rect(width/2-w/4, height/2+h/4, 5, 5);
 //rect(width/2+w/4, height/2-h/4, 5, 5);
 //rect(width/2+w/4, height/2+h/4, 5, 5);

// first quadrant works
//if((mouseX < width/2) && (mouseX > width/2-w/2) && (mouseY < height/2) && (mouseY > height/2-h/2)){
//  fill(0);
//  stroke(0);
//  rect(width/2-w/4, height/2-h/4, 5, 5);}

// second quadrant works
//if((mouseX > width/2) && (mouseX < width/2+w/2) && (mouseY < height/2) && (mouseY > height/2-h/2)){
//  fill(0);
//  stroke(0);
//  rect(width/2+w/4, height/2-h/4, 5, 5);}

 //third quadrant works
//if((mouseX < width/2) && (mouseX > width/2-w/2) && (mouseY > height/2) && (mouseY < height/2+h/2)){
//  fill(0);
//  stroke(0);
//  rect(width/2-w/4, height/2+h/4, 5, 5);}

 // fourth quadrant works
//if((mouseX > width/2) && (mouseX < width/2+w/2) && (mouseY > height/2) && (mouseY < height/2+h/2)){
//  fill(0);
//  stroke(0);
//  rect(width/2+w/4, height/2+h/4, 5, 5);}

  fill(0);
  stroke(0);
  if((mouseX < width/2) && (mouseX > width/2-w/2) && (mouseY < height/2) && (mouseY > height/2-h/2)){
  rect(width/2-w/4, height/2-h/4, 5, 5);} else if((mouseX > width/2) && (mouseX < width/2+w/2) && (mouseY < height/2) && (mouseY > height/2-h/2)){
  rect(width/2+w/4, height/2-h/4, 5, 5);} else if((mouseX < width/2) && (mouseX > width/2-w/2) && (mouseY > height/2) && (mouseY < height/2+h/2)){
  rect(width/2-w/4, height/2+h/4, 5, 5);} else if((mouseX > width/2) && (mouseX < width/2+w/2) && (mouseY > height/2) && (mouseY < height/2+h/2)){
  rect(width/2+w/4, height/2+h/4, 5, 5);} else {}
}
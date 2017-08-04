// start drawing with mouse press
// boolean toggle 
// press 'c' to clear 
// press 's' to stop drawing

boolean going = false;

void setup() {
  size(600, 400);
  smooth();
  frameRate(8);
  background(255);
}

void draw() {
  
  if(going) {
  noStroke();
  fill(220, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
  fill(120);
  ellipse(pmouseX,pmouseY, 10, 10);
  stroke(120);
  line(pmouseX, pmouseY, mouseX, mouseY);}
}

void mousePressed() {
  going = !going;
}

void keyPressed() {
  if (key == 'c') {
    background(255);
  } 
  if (key == 's') {
  going = !going;
  } 
}
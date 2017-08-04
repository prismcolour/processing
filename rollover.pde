// rollover

void setup() {
 size(640, 320);
}

void draw() {
 background(0);
 stroke(255);
 line(width/2, 0, width/2, height);
 line(0, height/2, width, height/2);

// quad 1
if ((mouseX > 0) && (mouseX < width/2) && (mouseY > 0) && (mouseY < height/2)) {
 noStroke();
 fill(255, 0, 0);
 rect(0, 0, width/2, height/2);
} 

// quad 2 
if ((mouseX > width/2) && (mouseX < width) && (mouseY > 0) && (mouseY < height/2)) {
 noStroke();
 fill(255, 255, 0);
 rect(width/2+1, 0, width/2, height/2);
} 

// quad 3 
if ((mouseX > 0) && (mouseX < width/2) && (mouseY > height/2) && (mouseY < height)) {
 noStroke();
 fill(0, 0, 255);
 rect(0, height/2+1, width/2, height/2);
}

// quad 4
if ((mouseX > width/2) && (mouseX < width) && (mouseY > height/2) && (mouseY < height)) {
 noStroke();
 fill(0, 255, 0);
 rect(width/2+1, height/2+1, width/2, height/2);
}
}
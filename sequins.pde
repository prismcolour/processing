// looping based on window size
// overlay pattern

float x;
float y;
float alpha;

void setup() {
size(1000, 600);
noStroke();
smooth();
background(255);

alpha = random(0, 10);
// 30 ok
frameRate(2);
}

void draw() {
x = 0;
while (x < width) {
y = 0;
// .0003 ok
while (y < height + 0.01) {
 fill(random(0, 105), alpha);
 //fill(150);
 ellipse(x+10, y+10, 45, 45);
 y = y + 30;
 }
 x = x + 30;
 }
}
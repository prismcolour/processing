color[] cmy = {#F2EA02, #099FFF, #FF0099};
color[] palette = cmy;

float rectX;
float rectY;
float alpha;
float d1;

void setup() {
 size(640, 320);
 background(100);
 //rectX = random(width);
 //rectY = random(height);
 //d1 = random(40);
 alpha = random(100);
}

void draw() {
 noStroke();
 fill(palette[int(random(3))], alpha);
 rectMode(CENTER);
 rect(width/2, height/2, 20, 20);
}
color[] cmy = {#F2EA02, #099FFF, #FF0099};
color[] palette = cmy;

Bounce ball;
Bounce ball2;

float alpha;

void setup() {
 size(640, 320);
 ball = new Bounce(random(width), random(height));
 ball2 = new Bounce(random(width), random(height));
 alpha = random(100);
 frameRate(12);
}

void draw() {
 background(155);

 ball.update();
 ball.boundary();
 ball.display();

 ball2.update();
 ball2.boundary();
 ball2.display();

 //saveFrame();
}
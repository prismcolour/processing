Bounce ball;

void setup() {
 size(640, 320);
 ball = new Bounce(width/2, height/2);
}

void draw() {
 background(155);

 ball.update();
 ball.boundary();
 ball.display();
}
class Bounce {

PVector location;
PVector velocity;
PVector acceleration;
float d;

Bounce(float x, float y) {
 // vector attributes
 location = new PVector(x, y);
 velocity = new PVector(random(3,6), random(3,6));
 acceleration = new PVector(-0.001, .01);
}

void update() {
 // location = location + speed
 velocity.add(acceleration);
 location.add(velocity); 
}

void boundary() {
 // reverse polarity
 // xspeed = xpseed * -1

 if ((location.x > width) || (location.x < 0)){
   velocity.x = velocity.x * -1;}

 // yspeed = yspeed * -1
 if ((location.y > height ) || (location.y < 0)){
   velocity.y = velocity.y * -1; }
 } 

 void display() {
   //d = int(random(50, 100)); 
   // random(10,30) cute bouncy ball
   // random(30,100) weird shape 

   for(int x = 0; x < 10; x = x + 1) {
   noStroke();
   fill(palette[int(random(3))], alpha);

   // rainbow bouncy balls
   ellipse(location.x, location.y, random(30, 300), random(30, 300));
   ellipse(location.x, location.y, random(40, 300), random(40, 300));
   ellipse(location.x, location.y, random(50, 300), random(50, 300));
   } 
 }
}
// moved keypressed to main file
// all keys working
// original problem: resistance to LEFT/RIGHT keys - FIXED 
// boundary issue fixed
// set acceleration to 0 at boundaries and added a cushion
// in motion even when keys are not pressed 

color[] cmy = {#F2EA02, #099FFF, #FF0099};
color[] palette = cmy;
float alpha;

PVector location;
PVector velocity;
PVector acceleration;

Move shape;

void setup(){
size(640, 320);
shape = new Move();
alpha = random(100);
}

void draw() {
background(60);

shape.boundary();
shape.update();
shape.display();

}

void keyPressed(){
// UP, DOWN, LEFT, RIGHT keys pull from default vector settings
// s - stops motion, clears out all settings
// tab - restarts motion with default vector settings

location = new PVector(width/2, height/2);
velocity = new PVector(1, 0);
acceleration = new PVector(-0.001, 0);

 if (keyCode == UP) {  
     shape.acceleration.normalize();
     // settings ok at .5 and 20
     shape.acceleration.mult(.5); 
     println(key + " UP" + " " + shape.acceleration.x);
   } else if (keyCode == DOWN) {
     shape.acceleration.normalize();
     shape.acceleration.div(20); 
     println(key + " DOWN" + " " + shape.acceleration.x);
   } else if (keyCode == LEFT) {
     if (shape.location.x > 50){ // offset for left side - keeps x at 0
     shape.acceleration.x = shape.acceleration.x *-3;
     shape.location.x = shape.location.x - 60;
   println(keyCode);} }
    else if (keyCode == RIGHT){
     if (shape.location.x < width - 50) {// offset for right side - keeps x at width
     //velocity.limit(topspeed);
     shape.boundary();
     shape.acceleration.x = shape.acceleration.x *-3;
     shape.location.x = shape.location.x + 60;}
   println(keyCode);
   } else if (key == 's') {
     shape.velocity.x = shape.velocity.x * 0; // stop 
     shape.acceleration.x = shape.acceleration.x * 0;
   println(key);
   }
   else if (keyCode == TAB) { // restart when keyPress jams up
     shape.velocity = new PVector(1, 0);
     shape.acceleration = new PVector(-0.001, 0);
   }
   }
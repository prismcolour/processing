class Move {
PVector location;
PVector velocity;
PVector acceleration;
float topspeed;

Move() {
 location = new PVector(width/2, height/2);
 velocity = new PVector(1, 0);
 acceleration = new PVector(-0.001, 0);
 topspeed = 10;
}

void update (){
velocity.add(acceleration);
velocity.limit(topspeed);
location.add(velocity);
}

void display(){
 noStroke();
 fill(palette[int(random(3))], alpha);
 rectMode(CENTER);
 rect(location.x, location.y, 100, 20);
}

void boundary() {
// reverse polarity
// xspeed = xpseed * -1

if ((location.x > width-50) || (location.x < 0+50)){
  velocity.x = velocity.x * -1;}

// yspeed = yspeed * -1
if ((location.y > height ) || (location.y < 0)){
  velocity.y = velocity.y * -1; }
} 

void keyPressed(){
// UP, DOWN, LEFT, RIGHT keys pull from default vector settings
// s - stops motion, clears out all settings
// tab - restarts motion with default vector settings

 if (keyCode == UP) {  
     acceleration.normalize();
     // settings ok at .5 and 20
     acceleration.mult(.5); 
     println(key + " UP" + " " + acceleration.x);
   } else if (keyCode == DOWN) {
     acceleration.normalize();
     acceleration.div(20); 
     println(key + " DOWN" + " " + acceleration.x);
   } else if (keyCode == LEFT) {
     if (location.x > 50){ // offset for left side - keeps x at 0
   location.x = location.x - 10;
   println(keyCode);} }
    else if (keyCode == RIGHT){
     if (location.x < width - 50) {// offset for right side - keeps x at width
   location.x = location.x + 10;}
   println(keyCode);
   } else if (key == 's') {
   velocity.x = velocity.x * 0; // stop 
   acceleration.x = acceleration.x * 0;
   println(key);
   }
   else if (keyCode == TAB) { // restart when keyPress jams up
   velocity = new PVector(1, 0);
   acceleration = new PVector(-0.001, 0);
   }
   }
}
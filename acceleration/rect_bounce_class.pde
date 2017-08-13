class Bounce {

 PVector location;
 PVector velocity;
 PVector acceleration;
 float topspeed;

 Bounce() {
   location = new PVector(width/2, 0);
   velocity = new PVector(0,0);
   acceleration = new PVector(-0.001, 0.01);
   topspeed = 10;
 }

 void update() {
   velocity.add(acceleration);
   velocity.limit(topspeed);
   location.add(velocity);
 }


 //void checkEdges() {
 //  if (location.x > width) {
 //    location.x = 0;
 //  } else if (location.x < 0) {
 //    location.x = width;
 //  }

 //  if (location.y > height) {
 //    location.y = 0;
 //  } else if (location.y < 0) {
 //    location.y = height;
 //  }
 //}

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
 rect(location.x, location.y, 100, 20);
}

// keyCode
void keyPressed() {
   if (keyCode == UP) {  
     acceleration.normalize();
     acceleration.mult(.2); 
     println(key + " UP" + " " + acceleration.x + " " + acceleration.y);
   } else if (keyCode == DOWN) {
     acceleration.normalize();
     acceleration.div(20);
     println(key + " DOWN" + " " + acceleration.x + " " + acceleration.y);
   } 
}

}
// you can see the acceleration/deceleration better with boundary

Bounce shape;

void setup(){
 size(640, 320);
 shape = new Bounce();
}

void draw(){
 background(255);

 shape.update();
 shape.boundary();
 //shape.checkEdges();
 shape.display();
 shape.keyPressed();
}

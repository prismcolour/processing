// bar moves left/right on left/right arrow key
// accelerates/decelerates with up/down key
// reset with 's'
// restart with tab

color[] cmy = {#F2EA02, #099FFF, #FF0099};
color[] palette = cmy;
float alpha;

Move shape;

void setup(){
size(640, 320);
shape = new Move();
alpha = random(100);
}

void draw() {
background(60);

shape.display();
shape.boundary();
shape.update();
shape.keyPressed();
}

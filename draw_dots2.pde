// monochromatic circles

boolean going = false;

void setup() {
size(1000, 600);

noStroke();
smooth();
background(0);
}

void draw (){
 if(going){
 fill(random(0, 105));
 ellipse(mouseX-10, mouseY-10, 50, 50);
 }

}

void mousePressed() {
 going = !going;
}

void keyPressed() {
 if (key == 'c') {
   background(0);
 } 
 if (key == 's') {
 going = !going;
 } 
}
// star loop

void setup () {
size(1000, 600);
}

void draw() {
 background(51);
 //star(100, 100);
 //star(width/2, height/2);

 float x;
 float y;
 float starCounter;

 // basic loop - star grid in gray
 // y nested in x
 // starts the loop drawing the stars down
 // 3 stars down, breaks out of loop and draws going down again

 x = 100;
 while (x < width) {
 y = 100;
 while (y < height) {
 star(x, y);
 y = y + 200;
 }
 x = x + 200;
 }

 //// top row - blue
 //star2(100, 100);
 //star2(300, 100);
 //star2(500, 100);
 //star2(700, 100);
 //star2(900, 100);

 // fill in grid 10 stars - test
 // stars were filling in incorrectly when y nested in x showing 3-3-3-1
 // flipped the order of loop
 // nest x in y 
 // go through row - draws each star in the column
 // 5 stars across, then goes to next row
 // x column
 // y row

 starCounter = 0;
 y = 100;
 while (y < height) {
 x = 100;
 while ((x < width) && (starCounter<10)) {
 starCounter++;
 star2(x, y);
 println(starCounter);
 x = x + 200;
 }
 y = y + 200;
 }
}

// gray grid
void star(float x, float y) {
 fill(127);
 stroke(255);
 strokeWeight(2);

 //not hard-coded
 beginShape();
 vertex(x, y-50);
 vertex(x+14, y-20);
 vertex(x+47, y-15);
 vertex(x+23, y+7);
 vertex(x+29, y+40);
 vertex(x, y+25);
 vertex(x-29, y+40);
 vertex(x-23, y+7);
 vertex(x-47, y-15);
 vertex(x-14, y-20);
 endShape(CLOSE);
}

// draw blue stars to test looping
void star2(float x, float y) {
 fill(0, 0, 255);

 //not hard-coded
 beginShape();
 vertex(x, y-50);
 vertex(x+14, y-20);
 vertex(x+47, y-15);
 vertex(x+23, y+7);
 vertex(x+29, y+40);
 vertex(x, y+25);
 vertex(x-29, y+40);
 vertex(x-23, y+7);
 vertex(x-47, y-15);
 vertex(x-14, y-20);
 endShape(CLOSE);
}
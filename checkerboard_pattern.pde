// checkerboard pattern

size(400, 300);
background(0);
strokeWeight(2);
stroke(255);

//for (int x = 0; x < width; x = x + 20) {
//  rect(x, 0, 20, 20);
//}

float rowCount = 0;
float colCount = 0;

//for (int y = 0; y < height; y = y + 20) {
//  for (int x = 0; x < width; x = x + 20) {
//   stroke(255);
//   fill(0);
//   rect(x, y, 20, 20); }
//}


for (int y = 0; y < height; y = y + 20) {
 rowCount = rowCount + 1;
 for (int x = 0; x < width; x = x + 20) {
   colCount = colCount + 1;

   if (rowCount % 2 == 1) { // odd row
   // starts on red pattern
   if(colCount % 2 == 1) {
      stroke(255); // select based on odd/even count on squares
      fill(255, 0, 0);
   } else { 
      stroke(255);
      fill(255); } 
   rect(x,y, 20, 20);
   }

   if (rowCount % 2 == 0) { // even row
   //starts on white pattern
   if(colCount % 2 == 1) {
      stroke(255); // select based on odd/even count on squares
      fill(255); // offset 
   } else { 
      stroke(255);
      fill(255, 0, 0);
    } 
   rect(x,y, 20, 20);
   }

 }
}
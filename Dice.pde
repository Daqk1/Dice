int total = 0; 
void setup() {
  noLoop();
  size(500, 500);
  Die die = new Die(50, 50);
}
void draw() {
  die.roll();
  die.show();
  fill(#CCCCCC);
  noStroke();
  rect(200,455,100,25);
  fill(0);
  text("Sum = " + total,225,475);
}
void mousePressed() {
  total = 0;
  redraw();
}
class Die {
  int chance = (int)(Math.random()*6) + 1;
  int myX, myY;
  int amount; 
  Die(int x, int y) { //constructor aka Initalizer
    myX = x;
    myY = y;
  }
  void roll() {
    chance = (int)(Math.random()*6) + 1;
    amount = chance;
    total += amount;
    System.out.println(total);
  }
  void show() {
    stroke(10);
    for(int y = 0; y<400; y +=50){
    for (int i = 0; i < 400; i+=50) {
      fill(255);
      rect(myX+i, myY+y, 50, 50);
      fill(0);
      if (amount == 1) {
        ellipse(myX+25+i, myY+25+y, 10, 10);
      } else if (amount == 2) {
        ellipse(myX+40+i, myY+40+y, 10, 10);
        ellipse(myX+10+i, myY+10+y, 10, 10);
      } else if (amount == 3) {
        ellipse(myX+10+i, myY+40+y, 10, 10);
        ellipse(myX+25+i, myY+25+y, 10, 10);
        ellipse(myX+40+i, myY+10+y, 10, 10);
      } else  if (amount == 4) {
        ellipse(myX+10+i, myY+10+y, 10, 10);
        ellipse(myX+10+i, myY+40+y, 10, 10);
        ellipse(myX+40+i, myY+10+y, 10, 10);
        ellipse(myX+40+i, myY+40+y, 10, 10);
      } else if (amount == 5) {
        ellipse(myX+10+i, myY+10+y, 10, 10);
        ellipse(myX+10+i, myY+40+y, 10, 10);
        ellipse(myX+25+i, myY+25+y, 10, 10);
        ellipse(myX+40+i, myY+10+y, 10, 10);
        ellipse(myX+40+i, myY+40+y, 10, 10);
      } else if (amount == 6) {
        ellipse(myX+10+i, myY+10+y, 10, 10);
        ellipse(myX+10+i, myY+25+y, 10, 10);
        ellipse(myX+10+i, myY+40+y, 10, 10);
        ellipse(myX+40+i, myY+10+y, 10, 10);
        ellipse(myX+40+i, myY+25+y, 10, 10);
        ellipse(myX+40+i, myY+40+y, 10, 10);
      }
       die.roll();
    }
  }
  }
}

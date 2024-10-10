int total = 0;  
void setup() {
  size(1000,1000);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  for (int j = 50; j < 900; j += 200) {  
    for (int i = 0; i < 1000; i += 200) {  
      Die bob = new Die(100 + i, 50 + j); 
      bob.show();
    }
  }
  textSize(25);
  fill(255);
  text("Total: " + total,450, 25);
}

void mousePressed() {
  total = 0;
  redraw();
}

class Die {
  int diceNum, myX, myY;
  Die(int x, int y) {
    diceNum = (int)(Math.random() * 6) + 1;
    myX = x;
    myY = y;
    total += diceNum;
  }

  void roll() {
    diceNum = (int)(Math.random() * 6) + 1;
  }

  void show() {
    rectMode(CENTER);
    noStroke();
    fill(255);
    rect(myX, myY, 100, 100, 20);  // use myX and myY for the rectangle position
    fill(0);
    
    if (diceNum == 1) {
      ellipse(myX, myY, 15, 15);
    }
    if (diceNum == 2) {
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
    }
    if (diceNum == 3) {
      ellipse(myX, myY, 15, 15);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
    }
    if (diceNum == 4) {
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
    }
    if (diceNum == 5) {
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX, myY, 15, 15);
    }
    if (diceNum == 6) {
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX - 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY + 20, 15, 15);
      ellipse(myX + 20, myY - 20, 15, 15);
      ellipse(myX - 20, myY, 15, 15);
      ellipse(myX + 20, myY, 15, 15);
    }
  }
}

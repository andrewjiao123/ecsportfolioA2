int slot1, slot2, slot3;

void setup() {
  size(600, 400);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  spinSlots(); 
}

void draw() {
  background(40);
  fill(220);
  rect(width/2, height/2 - 30, 450, 160, 15);
  drawShape(slot1, 150, height/2 - 30);
  drawShape(slot2, 300, height/2 - 30);
  drawShape(slot3, 450, height/2 - 30);
  if (slot1 == slot2 && slot2 == slot3) {
    fill(0, 255, 100);
    textSize(50);
    text("YOU WIN!", width/2, 330);
  } else {
    fill(255);
    textSize(24);
    text("Press '1' to spin!", width/2, 330);
  }
}
void keyPressed() {
  if (key == '1') {
    spinSlots();
  }
}
void spinSlots() {
  slot1 = int(random(3));
  slot2 = int(random(3));
  slot3 = int(random(3));
}
void drawShape(int shapeType, float x, float y) {
  fill(255, 150, 0);
  if (shapeType == 0) {
    rect(x, y, 90, 90);
  } else if (shapeType == 1) {
    ellipse(x, y, 100, 100);
  } else if (shapeType == 2) {
    triangle(x, y - 45, x - 45, y + 45, x + 45, y + 45);
  }
}

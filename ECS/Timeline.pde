// Andrew Jiao | 2 Feb 2026 | Federer Timeline 

void setup() {
  size(950, 400);
}

void draw() {
  background(#B4DEB9); 
  drawRef();
  histEvent(80, 180, "Aug 08 1981", 1, "Born in Basel, Switzerland to Robert and Lynette Federer.", #9DDB86);
  histEvent(380, 180, "Jul 05 1998", 1, "Won Wimbledon Boys Junior Title.", #91DBB4);
  histEvent(520, 180, "Jul 06 2003", 1, "Wins 1st Grand Slam (Wimbledon).", #91DB99);
  histEvent(780, 180, "Jan 28 2018", 1, "Became first man to reach 20th Grand Slam Title.", #C9DBA0);
  histEvent(320, 320, "Sep 15 1993", 0, "Began training at Swiss National Tennis Center at age 12.", #A0DBCF);
  histEvent(460, 320, "Jul 02 2001", 0, "Defeated idol Pete Sampras in 4th Round of Wimbledon.", #9DDB86);
  histEvent(620, 320, "Apr 11 2009", 0, "Married Mirka Vavrinec.", #91DBB4);
  histEvent(830, 320, "Sep 23 2022", 0, "Played final match (Laver Cup) alongside Rafael Nadal.", #91DB99);
}

void drawRef() {
  textAlign(CENTER);
  fill(0); 
  
  textSize(36);
  text("Roger Federer: Timeline", 475, 60);
  textSize(20);
  text("by Andrew Jiao", 475, 85);
  
  stroke(0);
  strokeWeight(5);
  line(50, 250, 900, 250);
  
  strokeWeight(3);
  line(50, 240, 50, 260);   
  line(465, 240, 465, 260); 
  line(900, 240, 900, 260); 
  
  textSize(16);
  text("1980", 50, 275);
  text("2025", 900, 275);
  text("2002", 465, 285);
}

void histEvent(int x, int y, String title, int top, String detail, color boxCol) {
  int boxX = x + 40;
  stroke(0); 
  strokeWeight(2);
  if (top == 1) {
    line(boxX, y + 15, x, 250); 
  } else {
    line(boxX, y - 15, x, 250); 
  }
  rectMode(CENTER);
  fill(boxCol); 
  stroke(0); 
  rect(boxX, y, 110, 30, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(11);
  text(title, boxX, y);
  if (mouseX > boxX - 55 && mouseX < boxX + 55 && mouseY > y - 15 && mouseY < y + 15) {
    fill(0);
    textSize(18);
    text(detail, 475, 380); 
  }
}

void setup() {
  size(1280, 720);
}

void draw() {
  background(200, 225, 255); // Langit biru
  
  drawClouds();
  drawPillars();
  drawRoof();
  drawTextOnRoof();
  drawRoad();
}

void drawPillars() {
  fill(139, 69, 19); 
  noStroke();

  // Pilar-pilar
  rect(320, 300, 20, 150);
  rect(740, 300, 20, 150);
  rect(780, 350, 15, 100); // tembok kanan (kiri)
  rect(900, 350, 15, 100); // tembok kanan (kanan)
  rect(170, 350, 15, 100); // tembok kiri (kiri)
  rect(290, 350, 15, 100); // tembok kiri (kanan)
}

void drawTextOnRoof() {
  fill(255); // Warna teks
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Pasar", 530, 250);
}

void drawRoof() {
  fill(160, 82, 45); 
  noStroke();

  // Atap utama
  beginShape();
  vertex(300, 300);
  vertex(760, 300);
  vertex(530, 150);
  endShape(CLOSE);

  // Segitiga kecil di tengah atap
  beginShape();
  vertex(380, 200);
  vertex(680, 200);
  vertex(530, 100);
  endShape(CLOSE);

  // Atap kanan tambahan
  beginShape();  
  vertex(916, 350);
  vertex(775, 350);
  vertex(847, 250);
  endShape(CLOSE);

  // Atap kiri tambahan
  beginShape();  
  vertex(170, 350);
  vertex(305, 350);
  vertex(238, 250);
  endShape(CLOSE);
}

void drawRoad() {
  fill(100);
  rect(0, 500, width, 200); // Jalan
  
  stroke(255);
  strokeWeight(5);
  for (int i = 0; i < width; i += 80) {
  }
}

void drawClouds() {
  fill(255);
  noStroke();

  // Awan kiri
  ellipse(150, 100, 100, 60);
  ellipse(200, 100, 120, 70);
  ellipse(250, 100, 100, 60);

  // Awan kanan
  ellipse(800, 120, 100, 60);
  ellipse(850, 120, 120, 70);
  ellipse(900, 120, 100, 60);
}

int cloudCount = 10; // Jumlah awan
float[] cloudX = new float[cloudCount];
float[] cloudY = new float[cloudCount];
float[] Awanpeed = new float[cloudCount];
int frameCountLimit = 300;

void setup() {
  size(1280, 720);
  // Inisialisasi posisi dan kecepatan awan
  for (int i = 0; i < cloudCount; i++) {
    cloudX[i] = random(width);
    cloudY[i] = random(50, 200);
    Awanpeed[i] = random(0.5, 2);
  }
}

void draw() {
  background(165, 165, 165);
  
  drawMatahari();
  drawGunung();
  drawSawah();
  drawJalan();
  drawAwan();
  
  //   saveFrame("frame-####.jpg");
  //  if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawMatahari() {
  fill(255, 223, 0); // Warna matahari
  noStroke();
  ellipse(700, 100, 80, 80); // Matahari

}

void drawGunung() {
  fill(34, 139, 34); // Warna gunung
  noStroke();

  // Gunung kiri (segitiga)
  triangle(0, 360, 320, 180, 640, 360);

  // Gunung kanan (segitiga)
  triangle(640, 360, 960, 180, 1280, 360);
}

void drawSawah() {
  fill(124, 252, 0); // Warna sawah
  noStroke();
  rect(0, 360, width, 360); // Sawah

  stroke(255);
  strokeWeight(1);
  
  // Garis vertikal
  for (int i = 0; i < width; i += 20) {
    line(i, 360, i, height);
  }
  
  // Garis horizontal
  for (int j = 360; j < height; j += 20) {
    line(0, j, width, j);
  }
}

void drawJalan() {
  fill(169, 169, 169); // Warna jalan
  noStroke();

  beginShape();
  vertex(590, 360);
  vertex(690, 360);
  vertex(880, height);
  vertex(400, height);
  endShape(CLOSE);

  stroke(255);
  strokeWeight(2);
  for (int i = 400; i < height; i += 70) {
  }
}

void drawAwan() {
  fill(255);
  noStroke();
  
  for (int i = 0; i < cloudCount; i++) {
    ellipse(cloudX[i], cloudY[i], 80, 50);
    ellipse(cloudX[i] + 50, cloudY[i], 100, 60);
    ellipse(cloudX[i] + 100, cloudY[i], 80, 50);

    cloudX[i] += Awanpeed[i];
    
    // Jika awan keluar dari layar, kembalikan ke kiri
    if (cloudX[i] > width + 100) {
      cloudX[i] = -100;
      cloudY[i] = random(50, 200);
      Awanpeed[i] = random(0.5, 2);
    }
  }
}

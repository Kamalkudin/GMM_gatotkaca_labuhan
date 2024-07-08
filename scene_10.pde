int AwanCount = 10; // Jumlah awan
float[] AwanX = new float[AwanCount];
float[] AwanY = new float[AwanCount];
float[] AwanSpeed = new float[AwanCount];
int frameCountLimit = 300;

float step = 0; // langkah untuk animasi
float posX = 720; // posisi horizontal dimulai dari tepi kanan
float posY = 820;
boolean movingRight = false; // arah gerakan mulai dari bergerak ke kiri

void setup() {
  size(1280, 720);
  frameRate(30);
  // Inisialisasi posisi dan kecepatan awan
  for (int i = 0; i < AwanCount; i++) {
    AwanX[i] = random(width);
    AwanY[i] = random(50, 200);
    AwanSpeed[i] = random(1, 2);
   
  }
}

void draw() {
  for (int y = 0; y <= height / 2; y++) {
    float inter = map(y, 0, height / 2, 0, 1);
    color c = lerpColor(color(15, 150, 180), color(20, 80, 120), inter);
    stroke(c);
    line(0, y, width, y);
  }
  
  drawMatahari();
  drawGunung();
  drawSawah();
  drawjalan();
  drawAwans();
  
  pushMatrix();
  translate(posX, 200); // Pindahkan posisi manusia
  scale(0.8);
  kepalaGatot();
  badanGatot(step);
  kakiGatot(step);
  updatePosition();
  step += 0.05; // Mengatur kecepatan animasi
  popMatrix();
  
  pushMatrix();
  translate(posY, 220); // Pindahkan posisi manusia
  scale(0.8);
  kepalaHaris();
  badanHaris(step);
  kakiHaris(step);
  updatePositionH();
  step += 0.05; // Mengatur kecepatan animasi
  popMatrix();
  
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawMatahari() {
  fill(255, 223, 0); // Warna matahari
  noStroke();
  ellipse(700, 100, 80, 80); // Matahari

}

void drawGunung() {
  fill(75, 85, 5); // Warna gunung
  noStroke();

  // Gunung kiri (segitiga)
  triangle(0, 360, 320, 180, 640, 360);

  // Gunung kanan (segitiga)
  triangle(640, 360, 960, 180, 1280, 360);
}

void drawSawah() {
  fill(180, 180, 105); // Warna sawah
  noStroke();
  rect(0, 360, width, 360); // Sawah

  stroke(255);
  strokeWeight(0.01);
  
  // Garis vertikal
  for (int i = 0; i < width; i += 20) {
    line(i, 360, i, height);
  }
  
  // Garis horizontal
  for (int j = 360; j < height; j += 20) {
    line(0, j, width, j);
  }
}

void drawjalan() {
  fill(132, 104, 112); // Warna jalan
  noStroke();

  beginShape();
  vertex(0,600);
  vertex(1280,550);
  vertex(1280,720);
  vertex(0,720);
  endShape(CLOSE);

  stroke(255);
  strokeWeight(2);
  for (int i = 400; i < height; i += 70) {
  }
}

void drawAwans() {
  fill(255);
  noStroke();
  
  for (int i = 0; i < AwanCount; i++) {
    ellipse(AwanX[i], AwanY[i], 80, 50);
    ellipse(AwanX[i] + 50, AwanY[i], 100, 60);
    ellipse(AwanX[i] + 100, AwanY[i], 80, 50);

    AwanX[i] += AwanSpeed[i];
    
    // Jika awan keluar dari layar, kembalikan ke kiri
    if (AwanX[i] > width + 100) {
      AwanX[i] = -100;
      AwanY[i] = random(50, 200);
      AwanSpeed[i] = random(4, 5);
    }
  }
}

void updatePosition(){
  if (movingRight) {
    posY += 2.5;
    if (posY > width -520) { // jika mencapai tepi kanan
      movingRight = false;
    }
  } else {
    posY -= 2.5;
    if (posY < -720) { // jika mencapai tepi kiri
      movingRight = true;
    }
  }
}
void updatePositionH(){
  if (movingRight) {
    posX += 2.5;
    if (posX > width -520) { // jika mencapai tepi kanan
      movingRight = false;
    }
  } else {
    posX -= 2.5;
    if (posX < -720) { // jika mencapai tepi kiri
      movingRight = true;
    }
  }
}

void kepalaGatot(){
  stroke(0);
  strokeWeight(1);
  //rambut
  fill(0);
  beginShape();
  vertex(550,118);
  vertex(550,118);
  vertex(584,118);
  vertex(607,111);
  vertex(634,115);
  vertex(650,144);
  vertex(644,178);
  vertex(665,121);
  vertex(660,89);
  vertex(649,80);
  vertex(602,68);
  vertex(565,80);
  vertex(544,81);
  vertex(524,75);
  vertex(521,68);
  vertex(526,61);
  vertex(518,63);
  vertex(508,75);
  vertex(513,99);
  vertex(527,112);
  vertex(541,119);
  vertex(549,140);
  vertex(550,118);
  endShape(CLOSE);
  //wajah
  fill(#ffdbac);
  beginShape();
  vertex(550,118);
  vertex(584,118);
  vertex(607,111);
  vertex(634,115);
  vertex(650,144);
  bezierVertex(645,240,539,240,550,118);
  endShape(CLOSE);

  //mata
  fill(255);
  ellipse(580,148,24,28);
  ellipse(614,148,24,28);
  fill(0);
  ellipse(578,149,7,7);
  ellipse(611,149,7,7);
  //mulut
  fill(#ff0000);
  beginShape();
  vertex(579,182);
  vertex(617,182);
  bezierVertex(605,194,597,194,579,182);
  vertex(579,182);
  endShape();
}

void badanGatot(float step){
  stroke(0);
  strokeWeight(1);
  // Gerakan tangan dengan osilasi sinusoidal menggunakan rotate
  float rightArmAngle = 0.3 * sin(step + PI);
  float leftArmAngle = 0.3 * sin(step);
  
  //tangan kiri
  fill(#ffdbac);
  pushMatrix();
  translate(540,280); // Pindahkan titik referensi
  rotate(leftArmAngle);
  rect(-8, 0, 16, 60); // Gambar lengan sebagai persegi panjang
  ellipse(0, 70, 18, 18); // Tambahkan tangan sebagai elips
  popMatrix();
  //baju
  fill(#00ffff);
  beginShape();
  vertex(553,217);
  vertex(641,217);
  bezierVertex(650,216,667,228,671,247);
  vertex(671,280);
  vertex(641,280);
  vertex(641,246);
  vertex(641,368);
  vertex(553,368);
  vertex(554,246);
  vertex(554,280);
  vertex(524,280);
  vertex(524,244);
  bezierVertex(525,233,537,221,553,217);
  vertex(553,217);
  endShape();
  
  //tangan kanan
  fill(#ffdbac);
  pushMatrix();
  translate(660,280); // Pindahkan titik referensi
  rotate(rightArmAngle);
  rect(-8, 0, 16, 60); // Gambar lengan sebagai persegi panjang
  ellipse(0, 70, 18, 18); // Tambahkan tangan sebagai elips
  popMatrix();
}

void kakiGatot(float step){
  stroke(0);
  strokeWeight(1);
  // Gerakan kaki dengan osilasi sinusoidal
  float rightLegY = 558 + 10 * sin(step);
  float leftLegY = 558 + 10 * sin(step + PI);
  
  //celana
  fill(#22300b);
  beginShape();
  vertex(637,369);
  vertex(636, rightLegY);
  vertex(615, rightLegY + 1);
  vertex(597,406);
  vertex(580, leftLegY + 1);
  vertex(557, leftLegY);
  vertex(557,369);
  vertex(637,369);
  endShape();
  
  //kaki kanan
  fill(#ffdbac);
  ellipse(633, rightLegY + 10, 36, 18);
  //kaki kiri
  ellipse(564, leftLegY + 10, 36, 18);
}

void kepalaHaris(){
  //rambut
  fill(0);
  beginShape();
  vertex(550,118);
  vertex(550,118);
  vertex(584,118);
  vertex(607,111);
  vertex(634,115);
  vertex(650,144);
  vertex(644,178);
  vertex(658,135);
  vertex(661,123);
  vertex(659,112);
  vertex(654,101);
  vertex(646,89);
  vertex(632,77);
  vertex(611,73);
  vertex(591,71);
  vertex(567,72);
  vertex(556,75);
  vertex(544,84);
  vertex(542,92);
  vertex(540,106);
  vertex(541,119);
  vertex(549,140);
  vertex(550,118);
  endShape();
  //wajah
  fill(#e0ac69);
  beginShape();
  vertex(550,118);
  vertex(584,118);
  vertex(607,111);
  vertex(634,115);
  vertex(650,144);
  bezierVertex(645,240,539,240,550,118);
  endShape(CLOSE);
  //kacamata
  fill(255);
  beginShape();
  line(649,144,636,149);
  ellipse(619,150,34,36);
  line(601,149,593,149);
  ellipse(576,150,34,36);
  line(558,148,550,144);
  endShape();
  fill(0);
  ellipse(610,151,7,7);
  ellipse(572,151,7,7);
  //mulut
  fill(#ff0000);
  beginShape();
  vertex(579,182);
  vertex(617,182);
  bezierVertex(602,195,597,195,579,182);
  vertex(579,182);
  endShape();
}

void badanHaris(float step){
  // Gerakan tangan dengan osilasi sinusoidal menggunakan rotate
  float rightArmAngle = 0.3 * sin(step + PI);
  float leftArmAngle = 0.3 * sin(step);
  
  //tangan kiri
  fill(#e0ac69);
  pushMatrix();
  translate(540,280); // Pindahkan titik referensi
  rotate(leftArmAngle);
  rect(-8, 0, 16, 60); // Gambar lengan sebagai persegi panjang
  ellipse(0, 70, 18, 18); // Tambahkan tangan sebagai elips
  popMatrix();
  //baju
  fill(#ff5400);
  beginShape();
  vertex(553,217);
  vertex(641,217);
  bezierVertex(650,216,667,228,671,247);
  vertex(671,280);
  vertex(641,280);
  vertex(641,246);
  vertex(641,368);
  vertex(553,368);
  vertex(554,246);
  vertex(554,280);
  vertex(524,280);
  vertex(524,244);
  bezierVertex(525,233,537,221,553,217);
  vertex(553,217);
  endShape();
  
  //tangan kanan
  fill(#e0ac69);
  pushMatrix();
  translate(660,280); // Pindahkan titik referensi
  rotate(rightArmAngle);
  rect(-8, 0, 16, 60); // Gambar lengan sebagai persegi panjang
  ellipse(0, 70, 18, 18); // Tambahkan tangan sebagai elips
  popMatrix();
  
}

void kakiHaris(float step){
  float rightLegY = 558 + 10 * sin(step);
  float leftLegY = 558 + 10 * sin(step + PI);
  //celana
  fill(#ffb380);
  beginShape();
  vertex(637,369);
  vertex(636, rightLegY);
  vertex(615, rightLegY + 1);
  vertex(597,406);
  vertex(580, leftLegY + 1);
  vertex(557, leftLegY);
  vertex(557,369);
  vertex(637,369);
  endShape();
  //kaki kanan
  fill(#e0ac69);
  ellipse(633, rightLegY + 10, 36, 18);
  //kaki kiri
  ellipse(564, leftLegY + 10, 36, 18);
}

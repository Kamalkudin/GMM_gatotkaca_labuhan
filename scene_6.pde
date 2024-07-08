float cloudSpeed1 = 0.5;     // Awan 1
float cloudSpeed2 = -0.8;    // Awan 2
float angleKanan = 0;
float angleKiri = 0;
boolean naikKanan = true;
boolean naikKiri = false;
float step = 0; // langkah untuk animasi
float posX = 720; // posisi horizontal dimulai dari tepi kanan
boolean movingRight = false; // arah gerakan mulai dari bergerak ke kiri

void setup() {
  size(1280, 720);
}

void draw() {
  background(200, 225, 255); // Langit biru
  translate(110,0);
  pushMatrix();
  translate(165, 385);
  scale(0.25);
  stroke(0);
  strokeWeight(0.8);
  kepalaDagang1();
  badanDagang1();
  kakiDagang1();
  
  translate(740, 0);
  kepalaDagang2();
  badanDagang2();
  kakiDagang2();
  
  translate(450, 0);
  kepalaDagang1();
  badanDagang1();
  kakiDagang1();
  
  translate(480, 0);
  kepalaDagang2();
  badanDagang2();
  kakiDagang2();
  
  translate(760, 0);
  kepalaDagang1();
  badanDagang1();
  kakiDagang1();
  popMatrix();
  
  drawAwan();
  drawTiang();
  drawAtap();
  drawJudul();
  drawJalan();
  
  updateTangan();
  
  //gatot
  stroke(0);
  strokeWeight(0.5);
  translate(250, 320);
  scale(0.45);
  kepalaGatot();
  badanGatot(step);
  kakiGatot(step);
  //updatePosition();
  step += 0.05; // Mengatur kecepatan animasi
  
  //save frame bawah
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawTiang() {
  fill(139, 69, 19); 
  noStroke();

  // Pilar-pilar
  rect(340, 350, 20, 200);
  rect(710, 350, 20, 200);
  rect(340, 490, 370, 100);
  rect(790, 400, 15, 150); // tembok kanan (kiri)
  rect(890, 400, 15, 150); // tembok kanan (kanan)
  beginShape();
  fill(#4f86af);
  rect(805, 490, 85, 100);
  endShape();
  fill(139, 69, 19);
  rect(180, 400, 15, 150); // tembok kiri (kiri)
  rect(280, 400, 15, 150); // tembok kiri (kanan)
  beginShape();
  fill(#3c891a);
  rect(195, 490, 85, 100);
  endShape();
}

void drawJudul() {
  fill(255); // Warna teks
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Pasar Sumber Rejo", 530, 300);
}

void drawAtap() {
  fill(160, 82, 45); 
  noStroke();

  // Atap utama
  beginShape();
  vertex(300, 350);
  vertex(760, 350);
  vertex(530, 200);
  endShape(CLOSE);

  // Segitiga kecil di tengah atap
  beginShape();
  vertex(380, 250);
  vertex(680, 250);
  vertex(530, 150);
  endShape(CLOSE);

  // Atap kanan tambahan
  beginShape();  
  vertex(930, 400);
  vertex(760, 400);
  vertex(845, 300);
  endShape(CLOSE);

  // Atap kiri tambahan
  beginShape();  
  vertex(155, 400);
  vertex(325, 400);
  vertex(238, 300);
  endShape(CLOSE);
}

void drawJalan() {
  fill(100);
  rect(-200, 550, width+200, 150); // Jalan
  
  stroke(255);
  strokeWeight(5);
  for (int i = 0; i < width; i += 80) {
  }
}

void drawAwan() {
  fill(255);
  noStroke();
  drawCloud(200, 100, 80, cloudSpeed1);
  drawCloud(600, 60, 100, cloudSpeed1);
  drawCloud(1000, 120, 90, cloudSpeed2);
}

void drawCloud(float x, float y, float size, float speed) {
  fill(255); 
  noStroke();
  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

void kepalaDagang1(){
  fill(#f1c27d);
  ellipse(301,185,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204,158);
  vertex(299,78);
  vertex(396,157);
  bezierVertex(330,175,265,175,204,158);
  endShape();
}

void badanDagang1(){
  //baju
  fill(#8d5524);
  beginShape();
  vertex(241,256);
  vertex(362,256);
  bezierVertex(374,257,390,271,394,294);
  vertex(394,328);
  vertex(361,328);
  vertex(361,292);
  vertex(361,435);
  vertex(242,435);
  vertex(242,286);
  vertex(242,328);
  vertex(208,329);
  vertex(208,283);
  bezierVertex(208,272,221,260,241,256);
  endShape();
  drawTangan1();
}

void kakiDagang1(){
  fill(#003c24);
  beginShape();
  vertex(246,436);
  vertex(358,436);
  vertex(358,634);
  vertex(326,634);
  vertex(303,488);
  vertex(277,633);
  vertex(246,633);
  vertex(246,436);
  endShape();
  fill(#f1c27d);
  ellipse(254,648,46,24);
  ellipse(350,649,46,24);
}

void kepalaDagang2(){
  fill(#f1c27d);
  ellipse(301,185,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204,158);
  vertex(299,78);
  vertex(396,157);
  bezierVertex(330,175,265,175,204,158);
  endShape();
}

void badanDagang2(){
  //baju
  fill(#8d5524);
  beginShape();
  vertex(241,256);
  vertex(362,256);
  bezierVertex(374,257,390,271,394,294);
  vertex(394,328);
  vertex(361,328);
  vertex(361,292);
  vertex(361,435);
  vertex(242,435);
  vertex(242,286);
  vertex(242,328);
  vertex(208,329);
  vertex(208,283);
  bezierVertex(208,272,221,260,241,256);
  endShape();
  //tangan kanan
  beginShape();
  fill(#f1c27d);
  vertex(386,328);
  vertex(386,429);
  vertex(365,429);
  vertex(365,328);
  vertex(386,328);
  endShape();
  ellipse(376,443,22,22);
  //tangan kiri
  beginShape();
  vertex(217,328);
  vertex(238,328);
  vertex(238,429);
  vertex(217,428);
  vertex(217,328);
  endShape();
  ellipse(227,442,22,22);
}

void kakiDagang2(){
  fill(#003c24);
  beginShape();
  vertex(246,436);
  vertex(358,436);
  vertex(358,634);
  vertex(326,634);
  vertex(303,488);
  vertex(277,633);
  vertex(246,633);
  vertex(246,436);
  endShape();
  fill(#f1c27d);
  ellipse(254,648,46,24);
  ellipse(350,649,46,24);
}

void updateTangan() {
  // Pergerakan rotasi tangan kanan
  if (naikKanan) {
    angleKanan += 0.02;
    if (angleKanan > 0.5) {
      naikKanan = false;
    }
  } else {
    angleKanan -= 0.02;
    if (angleKanan < -0.5) {
      naikKanan = true;
    }
  }

  // Pergerakan rotasi tangan kiri
  if (naikKiri) {
    angleKiri += 0.02;
    if (angleKiri > 0.5) {
      naikKiri = false;
    }
  } else {
    angleKiri -= 0.02;
    if (angleKiri < -0.5) {
      naikKiri = true;
    }
  }
}

void drawTangan1() {
  // Tangan kanan
  pushMatrix();
  translate(376, 328);
  rotate(angleKanan);
  fill(#f1c27d);
  beginShape();
  vertex(0, 0);
  vertex(0, 101);
  vertex(-21, 101);
  vertex(-21, 0);
  vertex(0, 0);
  endShape();
  ellipse(0, 115, 22, 22);
  popMatrix();

  // Tangan kiri
  pushMatrix();
  translate(227, 328);
  rotate(angleKiri);
  beginShape();
  vertex(0, 0);
  vertex(21, 0);
  vertex(21, 101);
  vertex(0, 100);
  vertex(0, 0);
  endShape();
  ellipse(0, 114, 22, 22);
  popMatrix();
}

void drawTangan2() {
  // Tangan kanan
  pushMatrix();
  translate(376, 328);
  rotate(angleKanan);
  fill(#f1c27d);
  beginShape();
  vertex(0, 0);
  vertex(0, 101);
  vertex(-21, 101);
  vertex(-21, 0);
  vertex(0, 0);
  endShape();
  ellipse(0, 115, 22, 22);
  popMatrix();

  // Tangan kiri
  pushMatrix();
  translate(227, 328);
  rotate(angleKiri);
  beginShape();
  vertex(0, 0);
  vertex(21, 0);
  vertex(21, 101);
  vertex(0, 100);
  vertex(0, 0);
  endShape();
  ellipse(0, 114, 22, 22);
  popMatrix();
}
void kepalaGatot(){
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
  ellipse(581,149,7,7);
  ellipse(614,149,7,7);
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

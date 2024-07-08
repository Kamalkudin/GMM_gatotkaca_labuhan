float redShipSpeed = -1.5;   // kapal merah kri
float purpleShipSpeed = 1.0; // kapal ungu kanan
float cloudSpeed1 = 0.5;     // awan1 
float cloudSpeed2 = -0.8;    // awan2
float step = 0; // langkah untuk animasi
float posX = 720; // posisi horizontal dimulai dari tepi kanan
boolean movingRight = false; // arah gerakan mulai dari bergera

int frameCountLimit = 300;

void setup() {
  size(1280, 720);
  drawPantaiScene();
}

void draw() {
  background(240, 217, 9);
  drawPantaiScene();
}

void drawPantaiScene() {
  drawlangit();
  drawawan();
  drawMatahari();
  drawLaut();
  drawPantai();
  drawKapal();
  
  //save frame bawah
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawlangit() {
  for (int y = 0; y <= height/2; y++) {
    float inter = map(y, 0, height/2, 0, 1);
    color c = lerpColor(color(255, 0, 0), color(255, 165, 0), inter);
    stroke(c);
    line(0, y, width, y);
  }
}

void drawawan() {
  fill(255);
  noStroke();
  drawCloud(200, 100, 80, cloudSpeed1);
  drawCloud(600, 60, 100, cloudSpeed1);
  drawCloud(1000, 120, 90, cloudSpeed2);
}

void drawCloud(float x, float y, float size, float speed) {
  fill(255);  // White color for the cloud
  noStroke();
  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

void drawLaut() {
  fill(129, 214, 220);
  fill(0, 150, 255);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 5 * sin(TWO_PI * (x * 0.005 + frameCount * 0.01));
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  //fill(88, 115, 150, 150);
  fill(0, 150, 255, 150);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 10 * sin(TWO_PI * (x * 0.006 + frameCount * 0.03)); // Different parameters for a distinct wave pattern
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);

}

void drawMatahari() {
  fill(255, 204, 0);
  float sunRadius = 100;
  float sunHeight = height/2;
  arc(width/2, sunHeight, sunRadius * 2, sunRadius * 2, PI, TWO_PI);
}

void drawPantai() {
  fill(245, 170, 90);
  rect(0, 550, width, height/3);
}

void drawKapal() {
  float[] pos_x = {400, 800, 1200};
  float[] pos_y = {height/2 + 50, height/2 + 100, height/2 + 150};
  color[] c = {#CA09F0, #09F038, #F03809};

  for (int i = 0; i < 3; i++) {
    drawSingleShip(pos_x[i], pos_y[i], c[i], 0.8, i); 
  }
}

void drawSingleShip(float x, float y, color bendera, float scale, int index) {
  pushMatrix();
  translate(x, y);
  
  
  float shipSpeed = (index == 0) ? purpleShipSpeed : redShipSpeed;
  translate(shipSpeed * frameCount, 0); 
  
  // Draw ship
  fill(#735b3e);
  quad(0, 0, 80, 0, 60, 25, 20, 25);
  fill(bendera);
  triangle(5, -5, 50, -5, 50, -50);
  
  popMatrix();
}
void updatePosition(){
  if (movingRight) {
    posX += 2;
    if (posX > width -520) { // jika mencapai tepi kanan
      movingRight = false;
    }
  } else {
    posX -= 2;
    if (posX < -720) { // jika mencapai tepi kiri
      movingRight = true;
    }
  }
}

void kepalaHaris(){
  scale(0.75);
  translate(0,540);
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
  ellipse(613,151,7,7);
  ellipse(582,151,7,7);
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
  fill(#ffdbac);
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
  fill(#ffdbac);
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

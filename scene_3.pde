float redShipSpeed = -1.5;   // gerakan kiri merah
float purpleShipSpeed = 1.0; // gerakan ke kanan ungu
float cloudSpeed1 = 0.5;     // gerakan awan 1
float cloudSpeed2 = -0.8;    // gerakan awan 2

float step = 0; // langkah untuk animasi
float posX = 720; // posisi horizontal dimulai dari tepi kanan
boolean movingRight = false;
int frameCountLimit = 300;

void setup() {
  size(1280, 720);
  frameRate(30);
}

void updatePosition(){
  if (movingRight) {
    posX += 2;
    if (posX > width -520) { // jika mencapai tepi kanan
      movingRight = false;
    }
  } else {
    posX -= 1.75;
    if (posX < 200) { // jika mencapai tepi kiri
      movingRight = false;
    }
  }
}

void draw() {
  translate(-500,-100);
  scale(1.5);
  background(240, 217, 9); // Refresh background
  drawenvironment(); // Menghapus frame sebelumnya
  translate(posX,+100); // Pindahkan posisi manusia
  kepalaGatot();
  badanGatot(step);
  kakiGatot(step);
  updatePosition();
  step += 0.05;
  //save frame bawah
  
  //saveFrame("frame-####.jpg");
  
  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void kepalaGatot(){
  //rambut
  stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
  fill(255);
  ellipse(580,148,24,28);
  ellipse(614,148,24,28);
  fill(0);
  ellipse(576,149,7,7);
  ellipse(609,149,7,7);
  //mulut
   stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
  fill(#ffdbac);
  pushMatrix();
  translate(540,280); // Pindahkan titik referensi
  rotate(leftArmAngle);
  rect(-8, 0, 16, 60); // Gambar lengan sebagai persegi panjang
  ellipse(0, 70, 18, 18); // Tambahkan tangan sebagai elips
  popMatrix();
  //baju
   stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
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
   stroke(0);
  strokeWeight(1);
  fill(#ffdbac);
  ellipse(633, rightLegY + 10, 36, 18);
  //kaki kiri
   stroke(0);
  strokeWeight(1);
  ellipse(564, leftLegY + 10, 36, 18);
}

void environment() {
  drawlangit();
  drawawan();
  drawlaut();
  drawmatahari();
  drawpantai();
  drawkapal();
}

void drawlangit() {
  for (int y = 0; y <= height/2; y++) {
    float inter = map(y, 0, height/2, 0, 1);
    color c = lerpColor(color(255, 100, 50), color(255, 165, 0), inter);
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
  fill(255);
  noStroke();
  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

void drawmatahari() {
  fill(255, 204, 0);
  float sunRadius = 100;
  float sunHeight = height/2;
  arc(width/2, sunHeight, sunRadius * 2, sunRadius * 2, PI, TWO_PI);
}

void drawlaut() {
    fill(0, 200, 255);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 5 * sin(TWO_PI * (x * 0.005 + frameCount * 0.01));
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  //fill(0, 200, 255, 150)
  fill(0, 150, 255, 150);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 10 * sin(TWO_PI * (x * 0.006 + frameCount * 0.03)); 
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}



void drawpantai() {
  fill(238, 214, 175);
  rect(0, 550, width, height/3);
}

void drawkapal() {
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
  
  
  fill(#735b3e);
  quad(0, 0, 80, 0, 60, 25, 20, 25);
  fill(bendera);
  triangle(5, -5, 50, -5, 50, -50);
  
  popMatrix();
}

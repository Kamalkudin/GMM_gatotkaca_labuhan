int roadHeight = 200;
int laneMarkerWidth = 10;
int laneMarkerLength = 40;
int laneMarkerGap = 20;
color roadColor = color(200, 200, 200);
color laneMarkerColor = color(255); // Garis jalan putih
color grassColor = color(180, 255, 180);
color treeColor = color(50, 200, 50);
color backgroundColor = color(220, 240, 200);
color cloudColor = color(240, 240, 240);

float[] cloudX = {200, 600, 1000};
float[] cloudY = {100, 60, 120};
float cloudSpeed = 1;

float[] treeX = new float[10];
float[] treeY = new float[10];
float treeSpeed = 0.5;

float roadOffset = 0;
float roadSpeed = 0.5;

float personX = 0;   // Posisi awal orang
float personSpeed = 2;  // Kecepatan orang berjalan

void setup() {
  size(1280, 720);
  for (int i = 0; i < treeX.length; i++) {
    treeX[i] = i * 120 + 60;
    treeY[i] = height - roadHeight - 100;
  }
  loop();
}

void draw() {
  // Background
  background(135, 206, 235);

  // Draw tanah nya
  fill(160, 160, 160); 
  rect(0, height * 0.75, width, height * 0.25);

  // Gambar pos ronda
  drawPosRonda(width / 2, height * 0.75 - 100, 400, 300); 

  fill(160, 82, 45);
  rect(width * 0.32, height * 0.45, width * 0.02, height * 0.1);

  // Draw and move clouds
  for (int i = 0; i < cloudX.length; i++) {
    drawAwan(cloudX[i], cloudY[i], 80);
    cloudX[i] += cloudSpeed;
    if (cloudX[i] > width + 40) {
      cloudX[i] = -40;
    }
  }

  // Draw characters
  pushMatrix();
  scale(0.8);
  translate(370, 200);
  kepalaHaris();
  badanHaris();
  kakiHaris();
  popMatrix();
  
  pushMatrix();
  scale(0.8);
  translate(70, 200);
  kepalaGatot();
  badanGatot();
  kakiGatot();
  popMatrix();
  
  //save frame bawah
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawAwan(float x, float y, float size) {
  fill(255); 
  noStroke();

  ellipse(x, y, size, size);
  ellipse(x + size * 0.6, y, size, size);
  ellipse(x - size * 0.6, y, size, size);
}

void drawPosRonda(float x, float y, float w, float h) {
  // Atap
  fill(0, 0, 139); // 
  triangle(x - w / 2, y - h / 2, x + w / 2, y - h / 2, x, y - h);
  // lantai
  fill(139, 69, 19); 
  rect(x - w / 2, y, w, h / 4);
  // bangunan
  fill(105, 105, 105); // Dark grey color
  rect(x - w / 2, y - h / 2, w * 0.05, h);
  rect(x + w / 2 - w * 0.05, y - h / 2, w * 0.05, h);
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

void badanHaris(){
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
  beginShape();
  vertex(644,280);
  vertex(660,280);
  vertex(660,352);
  vertex(644,352);
  vertex(644,280);
  ellipse(652,362,18,18);
  endShape();
  //tangan kiri
  beginShape();
  vertex(534,280);
  vertex(550,280);
  vertex(550,353);
  vertex(534,353);
  vertex(534,280);
  ellipse(543,362,18,18);
  endShape();
}

void kakiHaris(){
  //celana
  fill(#ffb380);
  beginShape();
  vertex(637,369);
  vertex(636,557);
  vertex(615,558);
  vertex(597,406);
  vertex(580,558);
  vertex(557,558);
  vertex(557,369);
  vertex(637,369);
  endShape();
  //kaki kanan
  fill(#e0ac69);
  ellipse(633,568,36,18);
  //kaki kiri
  ellipse(564,568,36,18);
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

void badanGatot(){
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
  beginShape();
  vertex(644,280);
  vertex(660,280);
  vertex(660,352);
  vertex(644,352);
  vertex(644,280);
  ellipse(652,362,18,18);
  endShape();
  //tangan kiri
  beginShape();
  vertex(534,280);
  vertex(550,280);
  vertex(550,353);
  vertex(534,353);
  vertex(534,280);
  ellipse(543,362,18,18);
  endShape();
}

void kakiGatot(){
  //celana
  fill(#22300b);
  beginShape();
  vertex(637,369);
  vertex(636,557);
  vertex(615,558);
  vertex(597,406);
  vertex(580,558);
  vertex(557,558);
  vertex(557,369);
  vertex(637,369);
  endShape();
  //kaki kanan
  fill(#ffdbac);
  ellipse(633,568,36,18);
  //kaki kiri
  ellipse(564,568,36,18);
}

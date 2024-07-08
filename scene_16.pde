float mulutPosisi = 0;
boolean mulutNaik = true;
int frameCountLimit = 300;

void setup() {
  size(1280, 720);
  background(200, 200, 200); 
  frameRate(30);

  // Gambar lantai
  drawLantai();

  // Gambar Dinding
  drawDinding();

  // Gambar sofa
  drawSofa();

  // Gambar lukisan
  drawLukisan();

  // Gambar lampu
  drawLampu();
}

void draw(){
  // Gambar Haris di sebelah kiri
  scale(0.8);
  translate(-150, 250);
  kepalaHaris();
  badanHaris();
  kakiHaris();

  // Gambar Gatot di sebelah kanan
  translate(600, -10);
  kepalaGatot();
  badanGatot();
  kakiGatot();

  // Gambar Sepuh di tengah
  scale(1.2);
  translate(-330, -20); 
  kepalaSepuh();
  badanSepuh();
  kakiSepuh();

  // Gerakan mulut
  if (mulutNaik) {
    mulutPosisi += 1;
    if (mulutPosisi >= 10) {
      mulutNaik = false;
    }
  } else {
    mulutPosisi -= 1;
    if (mulutPosisi <= 0) {
      mulutNaik = true;
    }
  }

  // Gambar mulut Haris
  fill(#ff0000);
  beginShape();
  vertex(579, 182 + mulutPosisi);
  vertex(617, 182 + mulutPosisi);
  bezierVertex(605, 194 + mulutPosisi, 597, 194 + mulutPosisi, 579, 182 + mulutPosisi);
  vertex(579, 182 + mulutPosisi);
  endShape();

//saveFrame("frame-####.jpg");

//  if (frameCount >= frameCountLimit) {
//    noLoop();
//  }
}


//Gattot
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

//Haris
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

void kepalaSepuh(){
  //rambut
  beginShape();
  noStroke();
  fill(#c0c0c0);
  ellipse(639,143,22,22);
  ellipse(648,150,22,22);
  ellipse(650,164,22,22);
  ellipse(642,173,22,22);
  ellipse(554,143,22,22);
  ellipse(545,150,22,22);
  ellipse(543,164,22,22);
  ellipse(551,173,22,22);
  endShape(CLOSE);
  //kepala
  fill(#ffe4b5);
  stroke(1);
  beginShape();
  vertex(552,171);
  vertex(552,163);
  bezierVertex(556,115,639,115,643,164);
  vertex(643,172);
  bezierVertex(630,225,560,225,552,171);
  endShape(CLOSE);
  //wajah
  strokeWeight(0.6);
  bezier(577,141,583,134,610,134,616,141);
  bezier(577,145,583,138,610,138,616,145);
  bezier(577,149,583,142,610,142,616,149);
  //alis
  beginShape();
  strokeWeight(0.1);
  fill(#c0c0c0);
  vertex(571,161);
  bezierVertex(572,154,589,150,592,156);
  bezierVertex(585,156,578,157,571,161);
  endShape();
  fill(0);
  ellipse(586,164,6,6);
  beginShape();
  strokeWeight(0.1);
  fill(#c0c0c0);
  vertex(605,156);
  bezierVertex(609,150,629,154,626,161);
  bezierVertex(620,157,613,157,605,156);
  endShape();
  fill(0);
  ellipse(612,164,6,6);
  //kumis
  beginShape();
  fill(#c0c0c0);
  vertex(574,190);
  bezierVertex(584,180,612,180,622,190);
  bezierVertex(606,187,590,187,574,190);
  endShape(CLOSE);
}

void badanSepuh(){
  //baju
  fill(#aa4400);
  strokeWeight(1.2);
  beginShape();
  vertex(553,214);
  vertex(641,214);
  bezierVertex(654,212,664,228,665,243);
  vertex(665,348);
  vertex(641,348);
  vertex(641,248);
  vertex(641,366);
  vertex(553,366);
  vertex(553,248);
  vertex(553,348);
  vertex(528,348);
  vertex(528,242);
  bezierVertex(527,229,543,214,553,214);
  endShape();
  //tangan
  fill(#ffe4b5);
  ellipse(654,360,18,18);
  ellipse(541,360,18,18);
}

void kakiSepuh(){
  //celana
  fill(#ffb380);
  beginShape();
  vertex(556,367);
  vertex(639,367);
  vertex(638,516);
  vertex(616,516);
  vertex(597,396);
  vertex(580,516);
  vertex(556,516);
  vertex(556,367);
  endShape();
  fill(#ffe4b5);
  ellipse(562,529,36,18);
  ellipse(635,530,36,18);
}

void drawLantai() {
  fill(245, 245, 220);
  rect(0, height - 100, width, 100); 
}

void drawDinding() {
  fill(178, 255, 102);
  rect(0, 0, width, height - 100); 
}

void drawSofa() {
  fill(0, 153, 204); 
  stroke(0);
  strokeWeight(5);
  rect(300, 500, 600, 100, 20);
  rect(300, 400, 600, 150, 20);
  rect(850, 450, 50, 150, 20);
  rect(300, 450, 50, 150, 20);
  fill(0);
  rect(300, 600, 20, 20);
  rect(880, 600, 20, 20);
}

void drawLampu() {
  fill(255, 204, 0);
  noStroke();
  rect(100, 250, 120, 120, 10);
  fill(0);
  rect(150, 370, 20, 300); 
  rect(130, 670, 60, 30); 
}

void drawLukisan() {
  fill(255);
  stroke(0); 
  strokeWeight(3);
  
  // Frame lukisan pertama
  fill(0, 0, 51);
  rect(800, 150, 200, 150);
  noStroke();

  //  frame lukisan kedua
  fill(0, 0, 51);
  stroke(0); 
  rect(1050, 150, 200, 150);
}

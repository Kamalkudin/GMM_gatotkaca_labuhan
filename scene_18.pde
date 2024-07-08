float cloudSpeed1 = 0.5;     
float cloudSpeed2 = -0.8; 
void setup() {
  size(1280, 720);
  
}

void draw() {
  
  // Background
  background(135, 206, 235);

  // Draw tanah nya
  fill(160, 160, 160); 
  rect(0, height * 0.75, width, height * 0.25);

  // Gambar rumput
  drawRumput();

  // Gambar pos ronda
  drawPosRonda(width / 2, height * 0.75 - 100, 400, 300); 

  
  fill(160, 82, 45);
  rect(width * 0.32, height * 0.45, width * 0.02, height * 0.1);

  // Draw awan
  drawClouds();
  //code gambar warga
  {
  scale(0.5);
  translate(-170,560);
  stroke(1);
  kepalaWarga4();
  badanWarga4();
  kakiWarga4();
  kepalaWarga5();
  badanWarga5();
  kakiWarga5();
  kepalaWarga1();
  badanWarga1();
  kakiWarga1();
  kepalaWarga2();
  badanWarga2();
  kakiWarga2();
  kepalaWarga3();
  badanWarga3();
  kakiWarga3();
  }
  {
  scale(1.2);
  translate(320,30);
  stroke(1);
  kepalaGatot();
  badanGatot();
  kakiGatot();
  }
  {
  scale(1.2);
  translate(50,0);
  stroke(1);
  kepalaHaris();
  badanHaris();
  kakiHaris();
  }
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

void kepalaWarga1(){
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

void badanWarga1(){
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

void kakiWarga1(){
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

void kepalaWarga2(){
  fill(#f1c27d);
  ellipse(301+250,185,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204+250,158);
  vertex(299+250,78);
  vertex(396+250,157);
  bezierVertex(330+250,175,265+250,175,204+250,158);
  endShape();
}

void badanWarga2(){
  //baju
  fill(#8d0024);
  beginShape();
  vertex(241+250,256);
  vertex(362+250,256);
  bezierVertex(374+250,257,390+250,271,394+250,294);
  vertex(394+250,328);
  vertex(361+250,328);
  vertex(361+250,292);
  vertex(361+250,435);
  vertex(242+250,435);
  vertex(242+250,286);
  vertex(242+250,328);
  vertex(208+250,329);
  vertex(208+250,283);
  bezierVertex(208+250,272,221+250,260,241+250,256);
  endShape();
  //tangan kanan
  beginShape();
  fill(#f1c27d);
  vertex(386+250,328);
  vertex(386+250,429);
  vertex(365+250,429);
  vertex(365+250,328);
  vertex(386+250,328);
  endShape();
  ellipse(376+250,443,22,22);
  //tangan kiri
  beginShape();
  vertex(217+250,328);
  vertex(238+250,328);
  vertex(238+250,429);
  vertex(217+250,428);
  vertex(217+250,328);
  endShape();
  ellipse(227+250,442,22,22);
}

void kakiWarga2(){
  fill(0);
  beginShape();
  vertex(246+250,436);
  vertex(358+250,436);
  vertex(358+250,634);
  vertex(326+250,634);
  vertex(303+250,488);
  vertex(277+250,633);
  vertex(246+250,633);
  vertex(246+250,436);
  endShape();
  fill(#f1c27d);
  ellipse(254+250,648,46,24);
  ellipse(350+250,649,46,24);
}

void kepalaWarga3(){
  fill(#f1c27d);
  ellipse(301+500,185,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204+500,158);
  vertex(299+500,78);
  vertex(396+500,157);
  bezierVertex(330+500,175,265+500,175,204+500,158);
  endShape();
}

void badanWarga3(){
  //baju
  fill(#00ff92);
  beginShape();
  vertex(241+500,256);
  vertex(362+500,256);
  bezierVertex(374+500,257,390+500,271,394+500,294);
  vertex(394+500,328);
  vertex(361+500,328);
  vertex(361+500,292);
  vertex(361+500,435);
  vertex(242+500,435);
  vertex(242+500,286);
  vertex(242+500,328);
  vertex(208+500,329);
  vertex(208+500,283);
  bezierVertex(208+500,272,221+500,260,241+500,256);
  endShape();
  //tangan kanan
  beginShape();
  fill(#f1c27d);
  vertex(386+500,328);
  vertex(386+500,429);
  vertex(365+500,429);
  vertex(365+500,328);
  vertex(386+500,328);
  endShape();
  ellipse(376+500,443,22,22);
  //tangan kiri
  beginShape();
  vertex(217+500,328);
  vertex(238+500,328);
  vertex(238+500,429);
  vertex(217+500,428);
  vertex(217+500,328);
  endShape();
  ellipse(227+500,442,22,22);
}

void kakiWarga3(){
  fill(#00007c);
  beginShape();
  vertex(246+500,436);
  vertex(358+500,436);
  vertex(358+500,634);
  vertex(326+500,634);
  vertex(303+500,488);
  vertex(277+500,633);
  vertex(246+500,633);
  vertex(246+500,436);
  endShape();
  fill(#f1c27d);
  ellipse(254+500,648,46,24);
  ellipse(350+500,649,46,24);
}

void kepalaWarga4(){
  fill(#f1c27d);
  ellipse(301+125,185-50,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204+125,158-50);
  vertex(299+125,78-50);
  vertex(396+125,157-50);
  bezierVertex(330+125,175-50,265+125,175-50,204+125,158-50);
  endShape();
}

void badanWarga4(){
  //baju
  fill(#8daaff);
  beginShape();
  vertex(241+125,256-50);
  vertex(362+125,256-50);
  bezierVertex(374+125,257-50,390+125,271-50,394+125,294-50);
  vertex(394+125,328-50);
  vertex(361+125,328-50);
  vertex(361+125,292-50);
  vertex(361+125,435-50);
  vertex(242+125,435-50);
  vertex(242+125,286-50);
  vertex(242+125,328-50);
  vertex(208+125,329-50);
  vertex(208+125,283-50);
  bezierVertex(208+125,272-50,221+125,260-50,241+125,256-50);
  endShape();
  //tangan kanan
  beginShape();
  fill(#f1c27d);
  vertex(386+125,328-50);
  vertex(386+125,429-50);
  vertex(365+125,429-50);
  vertex(365+125,328-50);
  vertex(386+125,328-50);
  endShape();
  ellipse(376+125,443-50,22,22);
  //tangan kiri
  beginShape();
  vertex(217+125,328-50);
  vertex(238+125,328-50);
  vertex(238+125,429-50);
  vertex(217+125,428-50);
  vertex(217+125,328-50);
  endShape();
  ellipse(227+125,442-50,22,22);
}

void kakiWarga4(){
  fill(#004f70);
  beginShape();
  vertex(246+125,436-50);
  vertex(358+125,436-50);
  vertex(358+125,634-50);
  vertex(326+125,634-50);
  vertex(303+125,488-50);
  vertex(277+125,633-50);
  vertex(246+125,633-50);
  vertex(246+125,436-50);
  endShape();
  fill(#f1c27d);
  ellipse(254+125,648-50,46,24);
  ellipse(350+125,649-50,46,24);
}

void kepalaWarga5(){
  fill(#f1c27d);
  ellipse(301+375,185-50,132,132);
  fill(#8d5524);
  beginShape();
  vertex(204+375,158-50);
  vertex(299+375,78-50);
  vertex(396+375,157-50);
  bezierVertex(330+375,175-50,265+375,175-50,204+375,158-50);
  endShape();
}

void badanWarga5(){
  //baju
  fill(#5c7a00);
  beginShape();
  vertex(241+375,256-50);
  vertex(362+375,256-50);
  bezierVertex(374+375,257-50,390+375,271-50,394+375,294-50);
  vertex(394+375,328-50);
  vertex(361+375,328-50);
  vertex(361+375,292-50);
  vertex(361+375,435-50);
  vertex(242+375,435-50);
  vertex(242+375,286-50);
  vertex(242+375,328-50);
  vertex(208+375,329-50);
  vertex(208+375,283-50);
  bezierVertex(208+375,272-50,221+375,260-50,241+375,256-50);
  endShape();
  //tangan kanan
  beginShape();
  fill(#f1c27d);
  vertex(386+375,328-50);
  vertex(386+375,429-50);
  vertex(365+375,429-50);
  vertex(365+375,328-50);
  vertex(386+375,328-50);
  endShape();
  ellipse(376+375,443-50,22,22);
  //tangan kiri
  beginShape();
  vertex(217+375,328-50);
  vertex(238+375,328-50);
  vertex(238+375,429-50);
  vertex(217+375,428-50);
  vertex(217+375,328-50);
  endShape();
  ellipse(227+375,442-50,22,22);
}

void kakiWarga5(){
  fill(#004d00);
  beginShape();
  vertex(246+375,436-50);
  vertex(358+375,436-50);
  vertex(358+375,634-50);
  vertex(326+375,634-50);
  vertex(303+375,488-50);
  vertex(277+375,633-50);
  vertex(246+375,633-50);
  vertex(246+375,436-50);
  endShape();
  fill(#f1c27d);
  ellipse(254+375,648-50,46,24);
  ellipse(350+375,649-50,46,24);
}
void drawRumput() {
  // Draw grass blades
  fill(0, 255, 0);
  noStroke();
  
  // Calculate spacing between grass blades
  float bladeWidth = width / 20.0;
  
  // Draw multiple grass blades across the canvas
  for (int i = 0; i < 20; i++) {
    // Calculate x position for each blade
    float x = i * bladeWidth;
    
    // Draw grass blade
    beginShape();
    vertex(x, height);
    quadraticVertex(x + bladeWidth/2, height * 0.6, x + bladeWidth, height);
    endShape();
  }
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
  void drawClouds() {
  fill(255);
  noStroke();
  drawCloud(200, 100, 80, cloudSpeed1);
  drawCloud(600, 60, 100, cloudSpeed1);  // Raise the middle cloud a bit higher
  drawCloud(1000, 120, 90, cloudSpeed2);
}

void drawCloud(float x, float y, float size, float speed) {
  fill(255);  // White color for the cloud
  noStroke();
  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

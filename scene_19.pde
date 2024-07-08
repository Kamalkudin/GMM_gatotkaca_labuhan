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

float[] cloudX = {200, 250, 300, 800, 850, 900};
float[] cloudY = {100, 100, 100, 150, 150, 150};
float cloudSpeed = 1;

float[] treeX = new float[10];
float[] treeY = new float[10];
float treeSpeed = -0.5;

float roadOffset = 0;
float roadSpeed = -0.5;

float personX = 0;   // Posisi awal orang
float personSpeed = 2;  // Kecepatan orang berjalan

void setup() {
  size(1280, 720);
  for (int i = 0; i < treeX.length; i++) {
    treeX[i] = i * 120 + 60;
    treeY[i] = height - roadHeight - 100;
  }
}

void draw() {
  background(backgroundColor);

  // Draw grass
  fill(grassColor);
  noStroke();
  rect(0, 0, width, height);
  
  // Draw road
  fill(roadColor);
  beginShape();
  vertex(0, height - roadHeight);
  vertex(width, height - roadHeight);
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  // Draw lane markers
  stroke(laneMarkerColor);
  strokeWeight(laneMarkerWidth);
  for (int x = -laneMarkerLength; x < width; x += laneMarkerLength + laneMarkerGap) {
    line(x + roadOffset, height - roadHeight / 2, x + laneMarkerLength + roadOffset, height - roadHeight / 2);
  }
  
  // Move road
  roadOffset += roadSpeed;
  if (roadOffset > laneMarkerLength + laneMarkerGap) {
    roadOffset -= laneMarkerLength + laneMarkerGap;
  }
  
  // Draw and move trees
  for (int i = 0; i < treeX.length; i++) {
    drawTree(treeX[i], treeY[i]);
    drawTree(treeX[i], treeY[i] - 50);
    treeX[i] += treeSpeed;
    if (treeX[i] > width + 40) {
      treeX[i] = -40;
    }
  }
  
  // Draw and move clouds
  fill(cloudColor);
  noStroke();
  for (int i = 0; i < cloudX.length; i++) {
    ellipse(cloudX[i], cloudY[i], 80, 50);
    cloudX[i] += cloudSpeed;
    if (cloudX[i] > width + 40) {
      cloudX[i] = -40;
    }
  }

 
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.5);
  translate(50,560);
  kepalaWarga4();
  badanWarga4();
  kakiWarga4();
  popMatrix();
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.5);
  translate(-300,560);
  kepalaWarga5();
  badanWarga5();
  kakiWarga5();
  popMatrix();
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.5);
  translate(2060,560);
  kepalaWarga1();
  badanWarga1();
  kakiWarga1();
  popMatrix();
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.5);
  translate(495,560);
  kepalaWarga2();
  badanWarga2();
  kakiWarga2();
  popMatrix();
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.5);
  translate(1400,560);
  kepalaWarga3();
  badanWarga3();
  kakiWarga3();
  popMatrix();
   // Draw and move person
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.6);
  translate(-60,560);
  kepalaGatot();
  badanGatot();
  kakiGatot();
  popMatrix();
  
  pushMatrix();
  stroke(0);
  strokeWeight(1);
  scale(0.6);
  translate(100,560);
  kepalaHaris();
  badanHaris();
  kakiHaris();
  popMatrix();
  
  pushMatrix();
  scale(0.8);
  translate(400,100);
  papan();
  labuhan();
  wargaSamping();
  pushMatrix();
  translate(540,0);
  wargaSamping();
  popMatrix();
  popMatrix();
  
  // Move person
  personX += personSpeed;
  if (personX > width) {
    personX = -100;  // Reset position to left side of the screen
  }
  
    //save frame bawah
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

void drawTree(float x, float y) {
  fill(treeColor);
  noStroke();
  beginShape();
  vertex(x, y);
  vertex(x - 20, y + 60);
  vertex(x + 20, y + 60);
  endShape(CLOSE);
  
  beginShape();
  vertex(x, y + 20);
  vertex(x - 30, y + 80);
  vertex(x + 30, y + 80);
  endShape(CLOSE);
  
  beginShape();
  vertex(x, y + 40);
  vertex(x - 40, y + 100);
  vertex(x + 40, y + 100);
  endShape(CLOSE);
}

void kepalaGatot(){
  pushMatrix();
  scale(1,1);
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
  popMatrix();
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

void papan(){
  //gagang belakang
  fill(#855e42);
  beginShape();
  vertex(322,428);
  vertex(433,428);
  vertex(433,437);
  vertex(322,437);
  vertex(322,428);
  endShape();
  //tengah
  fill(#3eb49f);
  beginShape();
  vertex(433,394);
  vertex(847,394);
  vertex(847,445);
  vertex(433,445);
  vertex(433,394);
  endShape();
  //kain
  fill(#00b300);
  beginShape();
  vertex(433,394);
  vertex(847,394);
  bezierVertex(839,433,752,433,742,405);
  bezierVertex(736,433,655,433,646,404);
  bezierVertex(639,433,542,433,537,405);
  bezierVertex(525,433,439,433,433,398);
  endShape();
  //gagang depan
  fill(#855e42);
  beginShape();
  vertex(848,428);
  vertex(959,428);
  vertex(959,437);
  vertex(848,437);
  vertex(848,428);
  endShape();
}

void labuhan(){
  //base
  fill(#008a48);
  beginShape();
  vertex(530,394);
  vertex(636,205);
  vertex(653,205);
  vertex(763,394);
  vertex(530,394);
  endShape();
  
  //pisang

  beginShape();
  fill(#249225);
  strokeWeight(0.5);
  vertex(634,193);
  bezierVertex(641,195,649,195,657,193);
  vertex(657,197);
  bezierVertex(650,200,640,200,634,197);
  vertex(634,193);
  endShape();
  pushMatrix();
  translate(645, 198); 
  rotate(radians(-15)); 
  translate(-645, -198); 
  pisang();
  popMatrix();
  pushMatrix();
  translate(647, 200); 
  rotate(radians(-30)); 
  translate(-645, -198); 
  pisang();
  popMatrix();
  pushMatrix();
  translate(-6,0);
  translate(656, 200); 
  rotate(radians(-45)); 
  translate(-645, -198); 
  pisang();
  popMatrix();
  pushMatrix();
  translate(-10,0);
  translate(663, 200); 
  rotate(radians(-60)); 
  translate(-645, -198); 
  pisang();
  popMatrix();
  
  //layer hijau
  beginShape();
  fill(#67ab05);
  vertex(619,229);
  bezierVertex(636,233,654,233,671,229);
  vertex(675,237);
  vertex(688,288);
  vertex(666,240);
  vertex(664,292);
  vertex(654,241);
  vertex(645,293);
  vertex(641,240);
  vertex(623,291);
  vertex(628,239);
  vertex(602,288);
  vertex(616,235);
  vertex(619,229);
  endShape();
  
  //bulat putih
  beginShape();
  fill(#ffffd0);
  ellipse(623,229,8,8);
  ellipse(631,232,8,8);
  ellipse(640,234,8,8);
  ellipse(649,234,8,8);
  ellipse(657,233,8,8);
  ellipse(665,230,8,8);
  endShape();
  
  //terong x
  beginShape();
  fill(#614051);
  vertex(585,293);
  bezierVertex(627,300,667,300,705,293);
  vertex(714,308);
  vertex(714,342);
  vertex(693,311);
  vertex(685,350);
  vertex(663,315);
  vertex(646,356);
  vertex(628,315);
  vertex(606,351);
  vertex(600,312);
  vertex(578,342);
  vertex(577,309);
  vertex(585,293);
  endShape();
  
  //tomat x
  beginShape();
  fill(#ff6347);
  ellipse(588,293,12,12);
  ellipse(602,296,12,12);
  ellipse(616,298,12,12);
  ellipse(629,299,12,12);
  ellipse(644,299,12,12);
  ellipse(658,299,12,12);
  ellipse(672,298,12,12);
  ellipse(687,296,12,12);
  ellipse(700,293,12,12);
  endShape();
  
  //kuning bawah
  beginShape();
  fill(#b3ed20);
  vertex(530,394);
  vertex(552,356);
  vertex(558,378);
  vertex(583,357);
  vertex(592,378);
  vertex(616,363);
  vertex(635,384);
  vertex(648,365);
  vertex(660,384);
  vertex(683,365);
  vertex(707,383);
  vertex(716,362);
  vertex(734,382);
  vertex(742,361);
  vertex(763,394);
  vertex(530,394);
  endShape();
  
  //jeruk x
  beginShape();
  fill(#466d1d);
  ellipse(565,335,12,12);
  ellipse(578,343,12,12);
  ellipse(591,347,12,12);
  ellipse(604,352,12,12);
  ellipse(618,353,12,12);
  ellipse(632,354,12,12);
  ellipse(646,355,12,12);
  ellipse(661,354,12,12);
  ellipse(675,353,12,12);
  ellipse(689,351,12,12);
  ellipse(703,346,12,12);
  ellipse(717,341,12,12);
  ellipse(730,334,12,12);
  endShape();
}

void pisang(){
  pushMatrix();
  fill(#ffe135);
  beginShape();
  vertex(645,198);
  bezierVertex(637,204,632,212,630,222);
  bezierVertex(620,217,635,193,645,198);
  endShape();
  popMatrix();
}

void wargaSamping(){
  //kepala
  fill(#f1c27d);
  ellipse(353,374,92,92);
  beginShape();
  fill(#8d5524);
  vertex(286,354);
  vertex(352,298);
  vertex(420,353);
  bezierVertex(373,366,328,366,286,354);
  endShape();
  
  //baju
  beginShape();
  vertex(327,427);
  vertex(357,427);
  bezierVertex(362,427,366,434,367,441);
  vertex(367,549);
  vertex(319,549);
  vertex(319,442);
  bezierVertex(319,435,323,429,327,427);
  endShape();
  
  //tangan
  //lengan baju
  beginShape();
  vertex(357,449);
  vertex(370,471);
  vertex(349,484);
  vertex(335,461);
  bezierVertex(328,450,350,437,357,449);
  endShape();
  //tangan
  beginShape();
  fill(#f1c27d);
  vertex(368,472);
  vertex(374,481);
  vertex(392,442);
  vertex(405,447);
  vertex(378,500);
  vertex(371,500);
  vertex(354,480);
  vertex(368,472);
  endShape();
  ellipse(405,434,16,16);
  
  //kaki kanan
  fill(#003c24);
  beginShape();
  vertex(320,549);
  vertex(356,549);
  vertex(330,670);
  vertex(313,668);
  vertex(320,549);
  endShape();
  fill(#f1c27d);
  ellipse(327,680,32,16);
  
  //kaki kiri
  fill(#003c24);
  beginShape();
  vertex(327,549);
  vertex(362,549);
  vertex(377,660);
  vertex(361,664);
  vertex(327,549);
  endShape();
  fill(#f1c27d);
  ellipse(380,670,32,16);
}

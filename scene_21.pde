int frameCountLimit = 300;
float cloudSpeed1 = 0.5;
float cloudSpeed2 = -0.8;

void setup() {
  size(1280, 720);
  drawTrash();
  frameRate(30);
}

void drawBeachScene() {
  drawGradientSky();
  drawClouds();
  drawOcean();
  drawSun(); 
  drawBeach();

  

}

void drawGradientSky() {
  background(135, 206, 235);

  
  for (int y = 0; y <= height/2; y++) {
    float inter = map(y, 0, height/2, 0, 1);
    color c = lerpColor(color(0, 255, 255), color(135, 206, 235), inter); 
    stroke(c);
    line(0, y, width, y);
  }
}

void drawClouds() {
  fill(100);
  noStroke();
  
  
  drawCloud(200, 100, 80, cloudSpeed1);
  drawCloud(600, 60, 100, cloudSpeed2);
  drawCloud(1000, 120, 90, cloudSpeed2);
}

void drawCloud(float x, float y, float size, float speed) {
  
  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

void drawOcean() {

    fill(105, 124, 150);
    fill(88, 115, 150, 150);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 5 * sin(TWO_PI * (x * 0.005 + frameCount * 0.01));
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  //fill(88, 115, 150, 150);
  fill(105, 124, 150, 150);
  beginShape();
  for (int x = 0; x <= width; x++) {
    float y = height / 2 + 10 * sin(TWO_PI * (x * 0.006 + frameCount * 0.03));
    vertex(x, y);
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);

}

void drawSun() {
  fill(255, 204, 0);
  float sunRadius = 80;
  ellipse(width/2, height/3, sunRadius * 2, sunRadius * 2); 
}

void drawBeach() {
  fill(194, 178, 128); 
  
  
  float noiseScale = 0.02;
  float yOffset = height - 150;

  for (int x = 0; x < width; x++) {
    float noiseVal = noise(x * noiseScale);
    float sandHeight = map(noiseVal, 0, 1, 0, 20);
    rect(x, yOffset + sandHeight, 1, height/3 - sandHeight);
  }
}



void drawTrash() {
  
  fill(100);
  
  
  for (int i = 0; i < 60; i++) {
    float x = random(width);
    float y = random(height/2, height);
    float w = random(5, 15);
    float h = random(3, 10);
    ellipse(x, y, w, h); 
  }

 
  for (int i = 0; i < 60; i++) {
    float x = random(width);
    float y = random(550, height);
    float w = random(5, 15);
    float h = random(3, 10);
    rect(x, y, w, h); 
  }
}


void draw() {
  drawBeachScene();
  papan();
  labuhan();
  
  scale(0.6);
  translate(1000, 600);
  kepalaGatot();
  badanGatot();
  kakiGatot();

  //  saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
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

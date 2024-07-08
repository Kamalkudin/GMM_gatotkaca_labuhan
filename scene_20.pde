int frameCountLimit = 300;
float Awanpeed1 = 0.5;
float Awanpeed2 = -0.8;

void setup() {
  size(1280, 720);
  drawTrash();
  frameRate(30);
}

void drawPantaiScene() {
  drawLangit();
  drawAwan();
  drawLaut();
  drawMatahari();
  drawPantai();
  drawKapal(1200, height/2 + 150, color(240, 56, 9), 0.8);
}

void drawLangit() {
  background(135, 206, 235); 


  for (int y = 0; y <= height/2; y++) {
    float inter = map(y, 0, height/2, 0, 1);
    color c = lerpColor(color(0, 255, 255), color(135, 206, 235), inter);
    stroke(c);
    line(0, y, width, y);
  }
}

void drawAwan() {
  fill(100);
  noStroke();
  
 
  drawCloud(200, 100, 80, Awanpeed1);
  drawCloud(600, 60, 100, Awanpeed2);
  drawCloud(1000, 120, 90, Awanpeed2);
}

void drawCloud(float x, float y, float size, float speed) {

  ellipse(x + speed * frameCount, y, size, size);
  ellipse(x + size * 0.6 + speed * frameCount, y, size, size);
  ellipse(x - size * 0.6 + speed * frameCount, y, size, size);
}

void drawLaut() {

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
  
 
  fill(105, 124, 150, 150);
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
  float MatahariRadius = 80;
  ellipse(width/2, height/3, MatahariRadius * 2, MatahariRadius * 2); 
}

void drawPantai() {
  fill(194, 178, 128);
  
  
  float noiseScale = 0.02;
  float yOffset = height - 150; // Adjust for Pantai area

  for (int x = 0; x < width; x++) {
    float noiseVal = noise(x * noiseScale);
    float sandHeight = map(noiseVal, 0, 1, 0, 20);
    rect(x, yOffset + sandHeight, 1, height/3 - sandHeight);
  }
}

void drawKapal(float x, float y, color bendera, float scale) {
  pushMatrix();
  translate(x, y);
  

  float shipSpeed = -1.5;
  translate(shipSpeed * frameCount, 0);
  
  // Draw ship
  fill(#735b3e);
  quad(0, 0, 80, 0, 60, 25, 20, 25);
  fill(bendera);
  triangle(5, -5, 50, -5, 50, -50);
  
  popMatrix();
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
  drawPantaiScene();
  papan();
  labuhan();
  
  scale(0.6);
  translate(-300, 400);
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
  
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
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

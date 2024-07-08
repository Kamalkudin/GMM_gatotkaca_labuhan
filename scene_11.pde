float zoomFactor = 1.0;
float zoomSpeed = 0.001;
boolean zoomingIn = true;
int frameCountLimit = 300;

void setup() {
  size(1280, 720);
  background(135, 206, 235);  // Warna latar belakang biru langit
 
  
  pushMatrix();
  translate(width / 2, height / 2); 
  scale(zoomFactor);
  translate(-width / 2, -height / 2); 

  // Gambar awan pertama
  drawAwan(200, 100, 80);
  
  // Gambar awan kedua
  drawAwan(600, 60, 100);  
  
  // Gambar awan ketiga
  drawAwan(1000, 120, 90);

  // Gambar rumah
  drawRumah((width - 680) / 2, 300, 680, 320);  

  // Gambar rumput
  drawRumput();
  
}

void draw() {
  background(135, 206, 235);
  frameRate(30);
  
  if (zoomingIn) {
    zoomFactor += zoomSpeed; // zoom variabel
    if (zoomFactor >= 1.5) {  // stop zoom
      zoomingIn = false;
    }
  } 
  
  
  pushMatrix();
  translate(width / 2, height / 2); // tengah
  scale(zoomFactor); // zoom cam
  translate(-width / 2, -height / 2); //ori position
  
   drawjalan();
  // Gambar awan pertama
  drawAwan(200, 100, 80);
  
  // Gambar awan kedua
  drawAwan(600, 60, 100);  
  
  // Gambar awan ketiga
  drawAwan(1000, 120, 90);

  // Gambar rumah
  drawRumah((width - 680) / 2, 300, 680, 320);  

  // Gambar rumput
  drawRumput();
  

  popMatrix();
  
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}
void drawjalan() {
  fill(238, 214, 175);
  rect(0, 550, width, 200);
}

void drawAwan(float x, float y, float size) {
  fill(255);  // Warna awan putih
  noStroke();
  
  ellipse(x, y, size, size);
  ellipse(x + size * 0.6, y, size, size);
  ellipse(x - size * 0.6, y, size, size);
}

void drawRumah(float x, float y, float w, float h) {
  // Gambar tubuh rumah
  fill(240, 230, 140);  
  rect(x, y, w, h);
  stroke(0);
  strokeWeight(2);
  line(x, y, x + w, y);
  noStroke();

  // Gambar atap
  fill(139, 69, 19); 
  quad(x, y, x + w, y, x + w - w / 4, y - h / 2, x + w / 4, y - h / 2);

  // Gambar pintu
  fill(139, 69, 19);  
  rect(x + w / 2.5, y + h / 2, w / 5, h / 2);
  stroke(0);
  strokeWeight(2);
  rect(x + w / 2.5, y + h / 2, w / 5, h / 2);  
  fill(0);  
  ellipse(x + w / 2.5 + w / 5 - 10, y + h / 2 + h / 4, 10, 10);
  noStroke();

  // Gambar jendela kiri
  drawJendela(x + w / 10 + w / 10, y + h / 2.5, w / 5, h / 5);
  
  // Gambar jendela kanan
  drawJendela(x + w - w / 10 - w / 5 + w / 10, y + h / 2.5, w / 5, h / 5);
}

void drawJendela(float x, float y, float w, float h) {
  fill(255);  // Warna putih
  ellipse(x, y, w, h);
  stroke(0);
  strokeWeight(2);
  ellipse(x, y, w, h);  
  line(x, y - h / 2, x, y + h / 2);
  line(x - w / 2, y, x + w / 2, y);
  noStroke();
}

void drawRumput() {
  fill(34, 139, 34);  // Warna hijau
  noStroke();
  for (int x = 0; x < width; x += 10) {
    int grassHeight = (int)random(30, 70);  // Tinggi rumput lebih tinggi
    triangle(x, height, x + 5, height - grassHeight, x + 10, height);
  }
  
}

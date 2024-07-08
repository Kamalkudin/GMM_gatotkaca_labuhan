int frameCountLimit = 300;
float Awanpeed1 = 0.5;
float Awanpeed2 = -0.8;

void setup() {
  size(1280, 720);
  drawSampah();
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

void drawMatahari() {
  fill(255, 204, 0);
  float MatahariRadius = 80;
  ellipse(width/2, height/3, MatahariRadius * 2, MatahariRadius * 2); 
}

void drawPantai() {
  fill(194, 178, 128); 
  
  
  float noiseScale = 0.02;
  float yOffset = height - 150; 

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
  
  
  fill(#735b3e);
  quad(0, 0, 80, 0, 60, 25, 20, 25);
  fill(bendera);
  triangle(5, -5, 50, -5, 50, -50);
  
  popMatrix();
}

void drawSampah() {
  
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
  background(135, 206, 235); 
  drawPantaiScene();
  
  //saveFrame("frame-####.jpg");

  //if (frameCount >= frameCountLimit) {
  //  noLoop();
  //}
}

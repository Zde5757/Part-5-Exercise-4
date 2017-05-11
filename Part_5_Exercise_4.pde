void setup() {
 size(480, 120);
 smooth();
}
void draw() {
 background(204);
 randomSeed(0);
 for (int i = 35; i < width + 40; i += 40) {
 int gray = int(random(0, 102));
 float R = gray*(random(0,2));
 float G = gray*(random(0,2));
 float B = gray*(random(0,2));
 float scalar = random(0.25, 1.0);
 owl(i, 110, gray, scalar);
 }
}
void owl(int x, int y, int g, float s) {
 float R = 127.5*(random(0,2));
 float G = 127.5*(random(0,2));
 float B = 127.5*(random(0,2));
  pushMatrix();
 translate(x, y);
 scale(s); // Set the size
 stroke(R,G,B); // Set the gray value
 strokeWeight(70);
 line(0, -35, 0, -65); // Body
 noStroke();
 fill(255-R,255-G,255-B);
 ellipse(-17.5, -65, 35, 35); // Left eye dome
 ellipse(17.5, -65, 35, 35); // Right eye dome
 arc(0, -65, 70, 70, 0, PI); // Chin
 fill(R,G,B,255-g);
 ellipse(-14, -65, 8, 8); // Left eye
 ellipse(14, -65, 8, 8); // Right eye
 quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
 popMatrix();
} 
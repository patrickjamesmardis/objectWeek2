String[] lines;
PImage img;
int b = 0;
int i = 0;
void setup() {
  size(800, 800);
  background(0, 0, 0);
  lines = loadStrings("nums.txt");
  img = loadImage("wellfleet.jpg");
  frameRate(5);
}

void draw() {
  background(0, 0, b);
  noStroke();
  int j = i + 1;
  image(img, int(lines[i]), int(lines[j]));
  i += 2;
  b += 3;
  if (i >= lines.length) {
    i = 0;
  }
  if (b > 255) {
    b = 0;
  }
}

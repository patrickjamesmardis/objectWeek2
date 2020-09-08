String[] lines;
int i = 0;
void setup() {
  size(800, 800);
  background(#FF5A36);
  lines = loadStrings("nums.txt");
  frameRate(5);
}

void draw() {
  background(#FF5A36);
  noStroke();
  int j = i + 1;
  int k = i + 2;
  fill(int(lines[i]), int(lines[j]), int(lines[k]));
  rect(350, 350, 100, 100);
  i += 3;
  if (i >= lines.length) {
    i = 0;
  }
}

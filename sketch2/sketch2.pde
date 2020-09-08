String[] lines;
int i = 0;
void setup() {
  size(800, 800);
  background(#FF5A36);
  lines = loadStrings("nums.txt");
}

void draw() {
  background(#FF5A36);
  noStroke();
  rect(int(lines[i]), 0, 100, 100);
  i++;
  if(i >= lines.length) {
    i = 0;
  }
}

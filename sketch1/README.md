# Sketch 1: Update x position

**[process.patrickjam.es/](https://process.patrickjam.es/2020/09/08/week-2-input-from-stored-values/)**

![Sketch 1 gif](/documentationAssets/sketch1_1.gif)
![Sketch 1 gif](/documentationAssets/sketch1_2.gif)

```processing
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
  rect(int(lines[i]), 0, 100, 100);
  i++;
  if(i >= lines.length) {
    i = 0;
  }
}
```
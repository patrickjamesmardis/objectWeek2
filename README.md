# Week 3 | Input from stored values

**[process.patrickjam.es/](https://process.patrickjam.es/2020/09/08/week-2-input-from-stored-values/)**

For this week’s sketches, the class is exploring the use of stored values as input. The first sketch uses a .txt file with 50 lines of data. Each line contains one integer to update the x position of a square on the sketch. The data is loaded into the sketch using the loadStrings() function. The draw loop uses an increasing variable to loop through the array that holds these lines of data. After running this for the first time, I noticed the square’s speed was fairly quick, so I added the frameRate() function to slow the animation.

![Sketch 1 gif](/documentationAssets/sketch1_1.gif)
![Sketch 1 gif](/documentationAssets/sketch1_2.gif)

Next, I used the same file and data to update the square’s x and y positions. To keep this simple, I added an int variable to the draw loop that is assigned a value of one more than i to be used for the y position. This allows the positions to be entered on separate lines with even indices of the array holding x positions and odd indices holding y positions.

```processing
void draw() {
  background(#FF5A36);
  noStroke();
  int j = i + 1;
  rect(int(lines[i]), int(lines[j]), 100, 100);
  i += 2;
  if(i >= lines.length) {
    i = 0;
  }
}
```
![Sketch 2 gif](/documentationAssets/sketch2_1.gif)
![Sketch 2 gif](/documentationAssets/sketch2_2.gif)

For my third sketch, I updated the .txt file to hold 51 lines of integers between 0 and 255 and used the fill() method to change the square’s color.

```processing
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
```
![Sketch 3 gif](/documentationAssets/sketch3_1.gif)
![Sketch 3 gif](/documentationAssets/sketch3_2.gif)

Finally, I applied these position updates to an image that is loaded into the sketch.

![Sketch 4 gif](/documentationAssets/sketch4_1.gif)
![Sketch 4 gif](/documentationAssets/sketch4_2.gif)
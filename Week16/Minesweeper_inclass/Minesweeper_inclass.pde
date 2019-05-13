int numRows = 12;
int numCols = 10;
int cellW;
int cellH;

int[][] mineField = new int[numRows][numCols];
/*
int[][] mineField = {
 {1, 9, 1}, 
 {1, 2, 2}, 
 {0, 1, 9}
 };
 */
boolean[][] isRevealed = new boolean[numCols][numRows];

void setup() {
  size(400, 300);
  setupMineField(20);
  text("show", -10000, 10000);
  
  cellW = width/numRows;
  cellH = height/numCols;
}

void draw() {
  background(12, 40, 80);
  drawCells();
}

void drawCells() {
  for (int x = 0; x < numRows; x++) {
    for (int y = 0; y < numCols; y++) {
      if (isRevealed[y][x]) {
        if (mineField[y][x] >= 9) {
          fill(255);
          rect(x * cellW, y * cellH, cellW, cellH);
        } else if (mineField[y][x] != 0) {
          fill(255);
          rect(x * cellW, y * cellH, cellW, cellH);
          fill(0);
          text(mineField[y][x], x * cellW + cellW/2, y * cellH + cellH/2);
        }
      } else {
        fill(80, 100, 120);
        rect(x * cellW, y * cellH, cellW, cellH);
      }
    }
  }
}

void mousePressed() {
  //isRevealed[y][x] = true;
  //mouseX = gridX

  //int gridX = int(map(mouseX, 0, width, 0, numRows));
  int gridX = mouseX/cellW;
  int gridY = mouseY/cellH;

  isRevealed[gridY][gridX] = true;
  checkOpenSquaresAround(gridY,gridX);
}

void checkOpenSquaresAround(int y, int x){
   if(mineField[y][x] == 0 && !isRevealed[y][x]){
    openCell(y -1, x);
    openCell(y - 1, x + 1);
    openCell(y , x + 1);
    openCell(y + 1, x + 1);
    openCell(y +1, x);
    openCell(y +1, x -1);
    openCell(y , x -1 );
    openCell(y -1 , x -1);
  }
}

void openCell(int y, int x){
  if(y <0 || y >= numCols || x< 0 || x >= numRows) return;
  if(isRevealed[y][x]){
  isRevealed[y][x] = true;
  checkOpenSquaresAround(y,x);
  }
}

void setupMineField( int numMines ) {
  int[][] minePositions = new int[numMines][2]; 
  for (int i = 0; i<numMines; i++) {
    int[] pos = { int(random(numRows)), int(random(numCols)) };

    println(pos);
    minePositions[i] = pos;
  }
  for (int i = 0; i<numMines; i++) {
    // put mine into mineField
    int y = minePositions[i][1];
    int x = minePositions[i][0]; 
    mineField[ y ][ x ] = 9;
    // assign numbers based on mine positions
    addOneToCell(y - 1, x);
    addOneToCell(y - 1, x + 1);
    addOneToCell(y + 0, x + 1);
    addOneToCell(y + 1, x + 1);
    addOneToCell(y + 1, x);
    addOneToCell(y + 1, x - 1);
    addOneToCell(y, x - 1);
    addOneToCell(y - 1, x - 1);
  }
  println(mineField);
}

void addOneToCell(int y, int x) {
  if(y < 0 || y >= numCols || x < 0 || x > numRows ) return;
  mineField[y][x]++;
  /*
  if (y>0 && y < numCols && x > 0 && x < numRows) {
    mineField[y][x] ++;
  }
  */
}

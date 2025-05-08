int n = 100;
float blinksPerSecond = 2;
float padding = 50;

boolean[][] cells, cellsNext;
float cellSize;


void setup(){
  size(1000,1000);  
  frameRate( blinksPerSecond );

  cellSize = (width-2*padding)/n;
  cells = new boolean[n][n];
  cellsNext = new boolean[n][n];
  
  //setCellValuesAlternating();
  setCellValuesRandomly();
  //plantFirstGeneration();
}


void draw() {
    background(0,0,255);    
    float y = padding;
    
    for(int i=0; i<n; i++) {
      for(int j=0; j<n; j++) {
        float x = padding + j*cellSize;
        
        if (cells[i][j])
          fill(255, 0, 255);
          
        else
          fill(250);
          
        rect(x, y, cellSize, cellSize);
      }
      
      y += cellSize;
    }
    
    setNextGen();
    copyNextGenToCurrent();
}





 

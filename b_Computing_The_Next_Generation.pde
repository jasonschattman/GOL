void setNextGen(){
  int numAliveNeighbours;
  
  for(int i=0; i<n; i++) {
    for(int j=0; j<n; j++) {
      numAliveNeighbours = countAliveNeighbours(i,j);
      
      if (cells[i][j])
      
        if (numAliveNeighbours == 2 || numAliveNeighbours == 3)
          cellsNext[i][j] = true;
          
        else
          cellsNext[i][j] = false;
          
      else
        if (numAliveNeighbours == 3)
          cellsNext[i][j] = true;
          
        else
          cellsNext[i][j] = false;
    }
   }
}


int countAliveNeighbours(int i,int j) {
  int count = 0;
  
  for(int a = -1; a <= 1; a++) {  //a=-1, a = 0, a = 1
    for(int b = -1; b <= 1; b++) {  //b=-1, b=0,   b=1
      
      try {
        if (cells[i+a][j+b] == true && !(a==0 && b==0))
          count++;               
      }
      
      catch( IndexOutOfBoundsException e ) {
      }
    }
  }
  
  return count;
}


void copyNextGenToCurrent() {
    for(int i=0; i<n; i++) 
      for(int j=0; j<n; j++) 
        cells[i][j] = cellsNext[i][j];
}

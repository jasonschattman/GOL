void setCellValuesRandomly() {
  for(int i=0; i<n; i++) {
    
    for(int j=0; j<n; j++) {      
      int x = round(random(0,1));
      
      if (x == 0)
        cells[i][j] = false;
        
      else
        cells[i][j] = true;
    }
  }
}


void setCellValuesAlternating() {
  boolean t = true;
  for(int i=0; i<n; i++) {
    for(int j=0; j<n; j++) {      
        cells[i][j] = t;
        t = !t;
    }
  } 
}


void plantSpecificCells() {
   boolean A = true, D = false;  //A = alive, D = dead

   cells[0][0] = A; cells[0][1] = D; cells[0][2] = D; cells[0][3] = A;
   cells[1][0] = D; cells[1][1] = A; cells[1][2] = D; cells[1][3] = D;
   cells[2][0] = D; cells[2][1] = A; cells[2][2] = A; cells[2][3] = D;
   cells[3][0] = D; cells[3][1] = A; cells[3][2] = D; cells[3][3] = D;
}

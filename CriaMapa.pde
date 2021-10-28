 int linhaRobo = (int)random(tam_grid);
 int colunaRobo = (int)random(tam_grid);

 int linhaDestino = (int)random(tam_grid);
 int colunaDestino = (int)random(tam_grid);

int asRx;
int asRy;
int asDx;
int asDy;


int[][] CriaMapa(int N) {

   int[][] mat = new int[N][N];

  for (int i = 0; i<N; i++) {
    for (int j= 0; j<N; j++) {

      mat[i][j] = -1;
    }
  }

  int linha = -1;
  int coluna = -1;
  int i =0;
  
  while (i<qnt_obst) {
    
      while(true){
        linha = (int)random(N);
        coluna = (int)random(N);
    
        if(mat[linha][coluna] != 0){
      
          mat[linha][coluna] = 0;
          i++;
          break;
        }
        
      }
      
  }
  

      while(mat[linhaRobo][colunaRobo] != -2){
        linhaRobo = (int)random(N);
        colunaRobo = (int)random(N);
        if(mat[linhaRobo][colunaRobo] != 0 && mat[linhaRobo][colunaRobo] != -3){
          mat[linhaRobo][colunaRobo] = -2;
          asRx = linhaRobo;
          asRy = colunaRobo;
          
        }
      }
    
      
 
  
    
      while(mat[linhaDestino][colunaDestino] != -3){
        
        linhaDestino = (int)random(N);
        colunaDestino = (int)random(N);
        if(mat[linhaDestino][colunaDestino] != 0 && mat[linhaDestino][colunaDestino] != -2){
          mat[linhaDestino][colunaDestino] = -3;
          asDx = linhaDestino;
          asDy = colunaDestino;
        }
      }
    
    
  return mat;
}

 void WaveFront(int[][] matriz){
   
   int menor_adj;
   int local_adj;
   int contador = 0;
   boolean fim = false;
   
   while(!fim){
      delay(200);
      for (int i = 0; i<tam_grid; i++) {
        for (int j= 0; j<tam_grid; j++) {
         
          menor_adj = 250;
          local_adj = 0;
         
          if(matriz[i][j] >=0 || matriz[i][j] ==-3) continue;
          
          if(i-1 >=0 && (matriz[i-1][j]== -3 || matriz[i-1][j]>0) && matriz[i][j]!=-2){
            if(matriz[i-1][j]== -3){
              
              matriz[i][j] = 1; 
              contador++;
              break;
            
            }
            else {
              
              menor_adj = matriz[i-1][j];
              local_adj = 1;
              
            }
          }
          
          if(i+1<tam_grid && (matriz[i+1][j]== -3 || matriz[i+1][j]>0) && matriz[i][j]!=-2){
            if(matriz[i+1][j]== -3) {
              
              matriz[i][j] = 1; 
              contador++;
              break;
            
            }
            else if( matriz[i+1][j] < menor_adj){
              
              menor_adj = matriz[i+1][j];
              local_adj = 2;
              
            }
          }
          
          if(j-1 >=0 && (matriz[i][j-1]== -3 || matriz[i][j-1]>0)&& matriz[i][j]!=-2){
            if(matriz[i][j-1]== -3) {
              
              matriz[i][j] = 1;
              contador++;
              break;
            
            }
            else if(matriz[i][j-1] < menor_adj) {
              
              local_adj = 3;
              
            }
          }
          
          if(j+1 < tam_grid && (matriz[i][j+1]== -3 || matriz[i][j+1]>0)&& matriz[i][j]!=-2){
            if(matriz[i][j+1]== -3) {
              
              matriz[i][j] = 1; 
              contador++; 
              break;
            
            }
            
            else if(matriz[i][j+1] < menor_adj){
      
              local_adj = 4;
               
            }
          }
         
         
         
         
          if(local_adj == 1 && i>=0){
            matriz[i][j] = matriz[i-1][j]+1;
            contador++;
          }
          if(local_adj == 2 && i<tam_grid){
            matriz[i][j] = matriz[i+1][j]+1;
            contador++;
          }
          if(local_adj == 3 && j>=0 ){
            matriz[i][j] =matriz[i][j-1]+1;  
            contador++;
          }
          if(local_adj == 4 && j<tam_grid ){
            matriz[i][j] = matriz[i][j+1]+1;
            contador++;
          }
          
          if(contador>= (tam_grid * tam_grid - qnt_obst-2) ){
            
            fim = true;
            break;
          }
        }
        
      if(fim) break;
      
    }
  }
}

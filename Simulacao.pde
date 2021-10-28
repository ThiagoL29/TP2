
 
 boolean  roboTeste(int x, int y){
 
   if(matriz[x][y] == -2) return true;
   else  return false;
 
 }
 
 boolean destinoTeste(int x, int y){
 
   if(matriz[x][y] == -3) return true;
   else return false;
 }
 
 
 
 void simulacao(int[][] matriz){
   
  
  int menor_caminho;
  int direcao_caminho;

  while(matriz[asRx][asRy] != matriz[asDx][asDy]){
   delay(500);
    menor_caminho = 250;
    direcao_caminho = 0;
    
    if(roboTeste(asRx, asRy)){
      if(asRx-1>=0 && matriz[asRx-1][asRy] <menor_caminho && (matriz[asRx-1][asRy] >0||matriz[asRx-1][asRy]==-3)){
        menor_caminho = matriz[asRx-1][asRy];
        direcao_caminho = 1;
        
    
      }
      if(asRx+1<tam_grid && matriz[asRx+1][asRy] <menor_caminho &&(matriz[asRx+1][asRy]>0||matriz[asRx+1][asRy]==-3)){
         
         menor_caminho = matriz[asRx+1][asRy];
         direcao_caminho = 2;
      
      }
      if(asRy-1>=0 && matriz[asRx][asRy-1] <menor_caminho && (matriz[asRx][asRy-1]> 0||matriz[asRx][asRy-1]==-3)){
         
         menor_caminho = matriz[asRx][asRy-1];
         direcao_caminho = 3;
      
      }
      if(asRy+1<tam_grid && matriz[asRx][asRy+1] <menor_caminho && (matriz[asRx][asRy+1] > 0 || matriz[asRx][asRy+1] ==-3)){
         
         menor_caminho = matriz[asRx][asRy+1];
         direcao_caminho = 4;
      
      }
      
     
    
      
      if(direcao_caminho == 1) {
        
        matriz[asRx][asRy]= -1;
        asRx--;
        if(!roboTeste(asRx, asRy))
        matriz[asRx][asRy] = -2;
         
      }
      
      if(direcao_caminho == 2) {
        
        matriz[asRx][asRy]= -1;
        asRx++;
        if(!roboTeste(asRx, asRy))
        matriz[asRx][asRy] = -2;
         
      }
      
      if(direcao_caminho == 3) {
        
        matriz[asRx][asRy]= -1;
        asRy--;
        if(!roboTeste(asRx, asRy))
        matriz[asRx][asRy] =-2;
        
      }
      
      if(direcao_caminho == 4){
        
      
        matriz[asRx][asRy]= -1;
        asRy++;
        if(!roboTeste(asRx, asRy))
        matriz[asRx][asRy] =-2;
         
      }
        
    }
    
  }
  
}

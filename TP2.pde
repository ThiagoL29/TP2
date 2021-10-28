int tam_grid = 20;
int qnt_obst = 20;

int[][] matriz = CriaMapa(tam_grid);

void setup() {
  size(600, 600);
  background(255);
  thread("executa");
   
}


void executa(){
  
  WaveFront(matriz);
  simulacao(matriz);
 
}



void draw() {

  background(#FFEA00);

  float l = width/tam_grid;
  float h = height/tam_grid;

  for (int i = 0; i<tam_grid; i++) {
    for (int j= 0; j<tam_grid; j++) {

      float x = j*l;
      float y = h*i;
      if (matriz[i][j] == 0) fill(255, 0, 0);
      
      else if (matriz[i][j] == -2) fill(0, 255, 0);
      else if(matriz[i][j] == -3) fill(#F7E300);
      else if(matriz[i][j] == -1) fill(255);
      else fill(0, 255 - matriz[i][j]*15, 255 -matriz[i][j]*5);
      rect(x, y, l, h);
      fill(0);
      textSize(l/4);
      text(matriz[i][j], x+h/3, y+h/3);
      
    }
  }
}

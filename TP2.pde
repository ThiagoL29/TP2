int tam_grid = 10;
int qnt_obst = 10;

int[][] matriz = CriaMapa(tam_grid);

void setup() {
  size(600, 600);
  background(255);
  thread("executa");
   thread("simula");
}


void executa(){
  
  WaveFront(matriz);

}

void simula(){
  
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
      else if(matriz[i][j] == -3) fill(0, 0, 255);
      else if(matriz[i][j] == -1) fill(255);
      else fill(0, 255 - matriz[i][j]*20, 255 -matriz[i][j]*5);
      rect(x, y, l, h);
      fill(0);
      textSize(15);
      text(matriz[i][j], x+20, y+20);

      
    }
  }
}

class Tablero{
  int cantidadCeldas = 10;
  int tamH = height/cantidadCeldas;
  int tamW = width/cantidadCeldas;
  
  Celda [][] celdas = new Celda [cantidadCeldas][cantidadCeldas];
 
  Tablero(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        celdas[i][j] = new Celda(i*tamH,j*tamW,tamW,tamH);
      }
    }
  }
  
  void dibujar(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        celdas[i][j].dibujar();
        
     
      }
    }
  }
  


}

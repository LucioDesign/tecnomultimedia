class Celda{
   int posX, posY, PantX, PantY;

    Celda( int X, int Y, int X1,  int Y1){
        posX = X;
        posY = Y;
        PantX = X1;
        PantY = Y1;
    }

  void dibujar(){
    rect(posX,posY,PantX,PantY);
    fill(220,100,50);
    stroke(255);
  
  }
  
}

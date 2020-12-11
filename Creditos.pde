class Creditos {
  Proporcion proporcion;
  int posX;
  int posY;

  Creditos(Proporcion proporcion, int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
    this.proporcion = proporcion;
  }
  void dibujar() {
    pushStyle();
    fill(0);
    text("Basado en la novela original de Mark Twain\n \n- Dirigido por LucioJaurena\n- Arte por LucioJaurena\n- Programado por LucioJaurena\n- Escrito por LucioJaurena", proporcion.propX(posX), proporcion.propY(posY));
    popStyle();
    mover();
  }

  void mover() {
    if (posY > 200) {
      posY--;
    }
  }
  void reiniciar(){
    if(mouseX > proporcion.propX(60) && mouseX < proporcion.propX(210) && mouseY > proporcion.propY(50) && mouseY < proporcion.propY(110)){
      posY = proporcion.propY(600);
    }
  }
  
}

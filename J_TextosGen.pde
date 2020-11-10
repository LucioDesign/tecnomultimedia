class TextosGen {
  String texto;
  int posX;
  int posY;
  int tamTexto;

  void TextosJuego(String texto, int posX, int posY, int tamTexto, int colorT) {  
    pushStyle();
    textAlign(CENTER);
    textSize(tamTexto);
    fill(colorT);
    text (texto, posX, posY);
    popStyle();
  }
}

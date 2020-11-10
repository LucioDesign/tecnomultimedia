class Textos {
  String texto;
  int posX;
  int posY;
  int tamTexto;

  void TextosJuego(String texto, int posX, int posY, int tamTexto, int colorT) {  
    textSize(tamTexto);
    fill(colorT);
    text (texto, posX, posY);
  }
}

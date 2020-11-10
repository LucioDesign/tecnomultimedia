class Resultados {
  TextosGen textos6;
  String textoFinal;
  Resultados() {
    textos6 = new TextosGen();
  }
  void fin(String textoFinal) {
    background(0);
    textos6.TextosJuego(textoFinal, width/2, height/2, 30, 255);
  }
}

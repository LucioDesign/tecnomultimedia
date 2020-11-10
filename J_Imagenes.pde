class Imagen {

  int imagenAleatoria;
  int cantImagenes;

  PImage [] ropa = new PImage [8];
  TextosGen textos = new TextosGen();

  Imagen() {


    for (int i=0; i < ropa.length; i++) {
      ropa [i] = loadImage("imagen" + i + ".png");
    }
  }
  //---------------RESIZE---------------------------//
  int PorcentajeX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int PorcentajeY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }


  //----------------------------------- imagenes ROPA -------------------------------//

  void dibujarImagenes(int posX, int posY, int imagenAleatoria) {
    image(ropa[imagenAleatoria], posX, posY);
  }
}

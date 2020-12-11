class Ropa {

 // int imagenAleatoria;
  int cantImagenes;
  int posX;
  int posY;
  Proporcion proporcion;
  
  PImage [] ropa = new PImage [8];

  Ropa(int posX, int posY, Proporcion proporcion) {
this.posX = posX;
this.posY = posY;
this.proporcion = proporcion;


    for (int i=0; i < ropa.length; i++) {
      ropa [i] = loadImage("imagen" + i + ".png");
    }
  }
  
  //----------------------------------- imagenes ROPA -------------------------------//
  
  void dibujar(int imagenAleatoria) {
    image(ropa[imagenAleatoria], proporcion.propX(posX), proporcion.propY(posY));
  }

 
}

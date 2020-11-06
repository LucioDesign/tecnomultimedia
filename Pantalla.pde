class Pantalla{
  PImage imagenes []; 
  
int cantImagenes = 8;
int imagenAleatoria;
int posX;
int posY;
Botones boton1,boton2;

Pantalla(Botones boton1,Botones boton2){
this.boton1 = boton1;
this.boton2 = boton2;
}

void dibujar(){
  //--------- botones -----------//
boton1.dibujar();
boton2.dibujar();
//--------- Imagenes -----------//
imagenes = new PImage [cantImagenes];
inicializarImagenes();
dibujarImagenes((width/2)-100, (height/2)-100, imagenAleatoria);
}

void inicializarImagenes() {
  for (int i=0; i<cantImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".png");

  imagenAleatoria = floor(random(0, cantImagenes));
  
}
}
void dibujarImagenes(int posX, int posY, int imagenAleatoria){
image(imagenes[imagenAleatoria],posX,posY);

}
}

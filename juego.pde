void dibujarJuego() {
  if (estoyJugando()) {
    aJugar();
  }else if(perdi()){
    perdiste();
  }else if(gane()){
    ganaste();
  } 
}


boolean estoyJugando() {
  return estado == 0;
}

boolean perdi(){
  return estado == 2;
}

boolean gane(){
  return estado == 1;
}

void perdiste(){
  if (estado == 2){
  background(0);
  text("PERDISTE!!!! \n Preciona R para volver a jugar", width/2, height/2);
  text("Tu puntuación:" + puntos, width/2, height/1.3);
}
}

void ganaste(){
   if (estado == 1){
  background(0);
  text("GANASTE!!!! \n Preciona R para volver a jugar", width/2, height/2);
  text("Tu puntuación:" + puntos, width/2, height/1.3);
}
}

void aJugar() {
  dibujarPantalla(imagenAleatoria, textoAleatorio);
}

void dibujarPantalla(int imagenAleatoria, int textoAleatorio) {
  image(imagenes[imagenAleatoria], 0, 0, width, height);
  textAlign(CENTER);
  textSize(40);
  text(textos[textoAleatorio], width/2, height/2);
  println(imagenAleatoria, textoAleatorio);
  //println(imagenAleatoria, textoAleatorio);
  //println(vidas);
  //text("cont:" + imagenAleatoria + textoAleatorio, width/2, height/3);
  text("puntuación:" + puntos, width/2, height/10);
  text("vidas restantes:" + vidas, width/2, height/5);
 
}

void matchOK() {
   if (imagenAleatoria == textoAleatorio) {
    puntos = puntos + 1;
    generarPaqueteRandom();
  } else {
    vidas = vidas - 1;
   generarPaqueteRandom();
  }
 
}


void matchKO() {
   if (imagenAleatoria != textoAleatorio) {
    puntos = puntos + 1;
   generarPaqueteRandom();
 } else {
    vidas = vidas - 1;
  generarPaqueteRandom();
 }

}
void vidas(){
  if (vidas == 0) {
    estado = 2;
  } else if (puntos == 25) {
    estado = 1;
  }
}
void generarPaqueteRandom (){
   generarAleatorios();
 inicializarImagenes();
   inicializarTextos();
  
}

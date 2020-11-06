class Juego{
  
  int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
} 
  
int imagenAleatoria;
int estado;
int puntosEduardo;
int puntosTom;
int vidas;
int cantImagenes;
PFont letras;
PImage fondo;
PImage boton_azul;
PImage boton_rojo;


   Botones boton1, boton2; 
   Pantalla pantalla;
   Textos textos1, textos2,textos3,textos4;
  
Juego(){


 letras = loadFont ("FrenchScriptMT-48.vlw");
  fondo = loadImage("pergamino_fondo.png");
  boton_azul = loadImage ("azul.png") ;
  boton_rojo = loadImage ("naranja.png") ;
  textFont(letras); 


 boton1 = new Botones(boton_azul,"Tom",30,90,455,155,490);
 boton2 = new Botones(boton_rojo,"Eduardo",30,560,455,622,490);
 pantalla = new Pantalla(boton1,boton2);
 
  textos1 = new Textos("puntuación Tom:" + puntosTom,width/2, height/10);
  textos2 = new Textos("puntuación Eduardo:" + puntosEduardo, width/2, height/7);
  textos3 = new Textos("vidas restantes:" + vidas, width/2, height/5);

  textos4 = new Textos("Elige la ropa para\n cambiarle a los chicos,\n recuerda que se estan\n cambiando de ropa y que...\n ¡En cualquier momento\n llegan los guardias!",120,270);

}
void dibujar(){
  //---IMAGENES----//
  image (fondo,0,0);
  pantalla.dibujar();
  println(imagenAleatoria);

//--------TEXTOS----------------//
textAlign(CENTER);
  textSize(40);
fill(0);
textos1.textosPuntajes();
textos2.textosPuntajes();
textos3.textosPuntajes();
 textSize(30);
textos4.textosPuntajes();

fill(255);
//-------INCICIALIZACIÓN----------------//
 inicializarJuego();
//pantalla.dibujarImagenes(int posX, int posY, int imagenAleatoria){
  //inicializarTextos();
  generarAleatorios();
}
void inicializarJuego() {
  estado=0;
  puntosEduardo=0;
  puntosTom=0;
  vidas=3;
}

void generarAleatorios() {
  imagenAleatoria = floor(random(0, cantImagenes));
  
}
//---------- CLicks ----------------------//
 boolean clickBotonTom() {
  if (mouseX > PorcentajeX(90) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
    return true;
  }
  return false;
}

boolean clickBotonEduardo() {
  if (mouseX > PorcentajeX(560) && mouseX < PorcentajeX(695) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
    return true;
  }
  return false;
}

void keyPressed(){
  if(ganeTom() || perdi()|| ganeEduardo()){
    if(key == 'r' || key == 'R' ){
      inicializarJuego();
    }
  }
}

void dibujarJuego() {
  if (estoyJugando()) {
    dibujar();
  }else if(perdi()){
    perdiste();
  }else if(ganeTom()){
    ganasteT();
  }else if(ganeEduardo()){
    ganasteE();
  }  
}

boolean estoyJugando() {
  return estado == 0;
}

boolean perdi(){
  return estado == 2;
}

boolean ganeTom(){
  return estado == 1;
}

boolean ganeEduardo(){
  return estado == 3;
}

void perdiste(){
  if (estado == 2){
  background(0);
  text("Perdiste!!!! \n Los guardias los\n han encontrado\n Preciona R para volver a jugar", width/2, height/2);
  
}
}

void ganasteT(){
   if (estado == 1){
  background(0);
   text("Te vistes rápido y estas listo para ver cómo\n es la vida de Eduardo!!!! \n Preciona R para volver a jugar", width/2, height/2);

}
}
void ganasteE(){
   if (estado == 3){
  background(0);
  text("Te vistes rápido y estas listo para ver cómo\n es la vida de Tom!!!! \n Preciona R para volver a jugar", width/2, height/2);

}
}
void matchTom() {

   if (imagenAleatoria <= 4 ) {
    puntosTom = puntosTom + 1;
    generarPaqueteRandom();
  } else {
    vidas = vidas - 1;
   generarPaqueteRandom();
  
  }
}


void matchEduardo() {
  
   if (imagenAleatoria >= 3 ) {
    puntosEduardo = puntosEduardo + 1;
   generarPaqueteRandom();
 } else {
    vidas = vidas - 1;
  generarPaqueteRandom();
 
  }
}
void vidas(){
  if (vidas == 0) {
    estado = 2;
  } else if (puntosTom == 5) {
    estado = 1;
  } else if (puntosEduardo == 5) {
    estado = 3;
  }
}
void generarPaqueteRandom (){
   generarAleatorios();
 pantalla.dibujar();


}
void mouseClicked(){

  if(clickBotonTom()){
    matchTom();
  }else if(clickBotonEduardo()){
    matchEduardo();
  }
}

}

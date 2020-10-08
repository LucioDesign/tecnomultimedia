
int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}

int pantalla = 0;
int p2_Y_inicial = 500;
int p2_Y = p2_Y_inicial;
PFont letras; 
PImage fondo_papel;
PImage boton_verde;
PImage boton_azul;
PImage boton_rojo;
PImage boton_amarillo;
int cantTextos = 13;


PImage [] imag = new PImage [13];
String [] texto = new String [cantTextos];


void setup() {
  size(800, 600);
  background (0);
  letras = loadFont ("FrenchScriptMT-48.vlw");
  fondo_papel = loadImage ("pergamino_fondo.png") ;
  boton_verde = loadImage ("verde.png") ;
  boton_azul = loadImage ("azul.png") ;
  boton_rojo = loadImage ("naranja.png") ;
  boton_amarillo = loadImage ("amarillo.png") ;
   textFont(letras);
   
   for (int i=0; i < imag.length; i++) {
   imag [i] = loadImage(i + ".png");
   }   
textos();
}

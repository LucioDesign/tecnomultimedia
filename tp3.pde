import ddf.minim.*;
Minim musica;
AudioPlayer player;

int pantalla = 1;
int p2_Y_inicial = 500;
int p2_Y = p2_Y_inicial;
PFont letras; 
PImage fondo_papel;
PImage boton_verde;
PImage boton_azul;
PImage boton_naranja;
PImage boton_amarillo;
PImage pantalla_1;
PImage pantalla_2;
PImage pantalla_3;
PImage pantalla_4;
PImage pantalla_6;
PImage pantalla_7;
PImage pantalla_8;
PImage pantalla_9;
PImage pantalla_10;
PImage pantalla_11;
PImage pantalla_12;
PImage pantalla_13;
import ddf.minim.*;



void setup() {
  size(800, 600);
  background (0);
  letras = loadFont ("FrenchScriptMT-48.vlw");
  fondo_papel = loadImage ("pergamino_fondo.png") ;
  boton_verde = loadImage ("verde.png") ;
  boton_azul = loadImage ("azul.png") ;
  boton_naranja = loadImage ("naranja.png") ;
  boton_amarillo = loadImage ("amarillo.png") ;
   textFont(letras);
  pantalla_1 = loadImage ("pantalla1.png") ;
  pantalla_2 = loadImage ("pantalla2.png") ;
  pantalla_3 = loadImage ("pantalla3.png") ;
  pantalla_4 = loadImage ("pantalla4.png") ;
  pantalla_6 = loadImage ("pantalla6.png") ;
  pantalla_7 = loadImage ("pantalla7.jpg") ;
  pantalla_8 = loadImage ("pantalla8.jpg") ;
  pantalla_9 = loadImage ("pantalla9.jpg") ;
  pantalla_10 = loadImage ("pantalla10.jpg") ;
  pantalla_11 = loadImage ("pantalla11.jpg") ;
  pantalla_12 = loadImage ("pantalla12.png") ;
  pantalla_13 = loadImage ("pantalla13.jpg") ;
  musica = new Minim(this);
  player = musica.loadFile("greensleeves2.wav");
 
  
  
}

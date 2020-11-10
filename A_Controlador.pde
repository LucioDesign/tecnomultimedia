class Controlador{
Pantalla pantallas;
Botones boton;
Juego juego;

//-----velocidad creditos-----//
int p2_Y_inicial = 500;
int p2_Y = p2_Y_inicial;

//------- pantallas & imagenes -------//
PImage [] imag = new PImage [13];
int pantalla;
PFont letras; 
PImage fondo_papel;
PImage boton_verde;
PImage boton_azul;
PImage boton_rojo;
PImage boton_amarillo;

 Controlador(){
   pantalla = 0;
   pantallas = new Pantalla();
   boton = new Botones();
    juego = new Juego();
    
     letras = loadFont ("FrenchScriptMT-48.vlw");
  fondo_papel = loadImage ("pergamino_fondo.png") ;
  boton_verde = loadImage ("verde.png") ;
  boton_azul = loadImage ("azul.png") ;
  boton_rojo = loadImage ("naranja.png") ;
  boton_amarillo = loadImage ("amarillo.png") ;
   textFont(letras);
}


//---------------RESIZE---------------------------//
int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
    
    
//------------//////////---------- INDICADOR DE PANTALLAS (ESTADOS) -----------////////////------------//

} void pantallas(){
  image (fondo_papel,PorcentajeX(0),PorcentajeY(0),width,height);

  
  if (pantalla == 0) {    
    pantallas.pantallaMenu(pantalla);
    boton.boton(boton_rojo,"Créditos",30,560,455,592,490);
    boton.boton(boton_azul,"Inicio",30,90,455,125,490);
    
  } else if (pantalla == 1) {    
    pantallas.pantallaCreditos(pantalla, p2_Y);
    boton.boton(boton_rojo,"Menú",30,60,50,95,85);
 
  if ( p2_Y > 200) {
    p2_Y--;
  }
    
  } else if (pantalla == 2) {    
    pantallas.pantallaHistoria(pantalla);
    boton.boton(boton_amarillo,"Jugar con Tom",25,390,455,415,490);
    boton.boton( boton_verde,"Jugar con Eduardo",25,610, 455,620,490);
    
  } else if (pantalla == 3 || pantalla == 4 || pantalla == 6 || pantalla == 8) {
    
    pantallas.pantallasGenericas(pantalla);
    boton.boton(boton_azul,"Continuar",25,610,455,640,490);
    
  } else if (pantalla == 5) {

    juego.Dibujar();
    
  } else if (pantalla == 7) {
    
    pantallas.pantallasGenericas(pantalla);
    boton.boton(boton_amarillo,"Quedarse",25,550,390,595,425);
    boton.boton(boton_verde,"Reclamar el trono",25,556,455,568,490);
    
  } else if (pantalla == 9) {
    
    pantallas.pantallasGenericas(pantalla);
    boton.boton(boton_amarillo,"Decir la verdad",25,550,390,575,425);
    boton.boton(boton_verde,"Convertirse en rey",25,556,455,568,490);
    
  } else if (pantalla == 10 || pantalla == 11 || pantalla == 12) {
    
    pantallas.pantallasGenericas(pantalla);
    boton.boton(boton_rojo,"Fin",25,610,455,663,490);
    
  }
   println(pantalla);
}


// ------------////////////-------------------- PALANCA DE BOTONES --------------------///////////--------------//

void ClickBotones(){
  //----------------------------- CODIGOS ÚNICOS ---------------------------//
  if (pantalla == 0) {
     //Botón Créditos
  if (mouseX > PorcentajeX(560) && mouseX < PorcentajeX(695) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
    pantalla = 1;
  }
  //Botón Inicio
  if (mouseX > PorcentajeX(90) && mouseX < PorcentajeX(255) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
    pantalla = 2;
    
  }} else if (pantalla == 1) {    
     //Botón Presentación
  if (mouseX > PorcentajeX(60) && mouseX < PorcentajeX(195) && mouseY > PorcentajeY(50) && mouseY < PorcentajeY(110)) {
    p2_Y = p2_Y_inicial;
    pantalla = 0;
    
  }} else if (pantalla == 2) {
    //Botón jugar con Tom
    if (mouseX > PorcentajeX(390) && mouseX < PorcentajeX(540) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
      pantalla = 3;
    
  } else if (pantalla == 2) {
    //Botón jugar con Eduardo
    if (mouseX > PorcentajeX(610) && mouseX < PorcentajeX(760) && mouseY > PorcentajeY(455) && mouseY < PorcentajeY(515)) {
      pantalla = 4;
  }
  //---------------------------------------------- codigos reciclables-------------------------------------//
  }}else if (pantalla == 3) {
   boton(610,745,455,515,5);
   }else if (pantalla == 4) {
   boton(610,745,455,515,5);
   }else if (pantalla == 5) {
   juego.clickBot();
   }else if (pantalla == 6) {
   boton(610,745,455,515,7);
   } else if (pantalla == 7) {
   botones(515,700,390,450,556,706,455,515,11,10);
   } else if (pantalla == 8) {
   boton(610,745,455,515,9);
   }else if (pantalla == 9) {
   botones(515,700,390,450,556,706,455,515,10,12); 
   } else if (pantalla == 10) {
   boton(610,745,455,515,1);
   }else if (pantalla == 11) {
   boton(610,745,455,515,1);
   }else if (pantalla == 12) {
   boton(610,745,455,515,0);
   
   }
}
//-------------------------------- BOTONES GENÉRICOS --------------------------------------//

void boton (int c1,int c2,int c3,int c4, int b1){
if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
  pantalla = b1;
}
}

void botones (int c1,int c2,int c3,int c4,int c5,int c6,int c7,int c8,int b2,int b3){
   if (mouseX > PorcentajeX(c1) && mouseX < PorcentajeX(c2) && mouseY > PorcentajeY(c3) && mouseY < PorcentajeY(c4)) {
    pantalla = b2;
    
 } else if (mouseX > PorcentajeX(c5) && mouseX < PorcentajeX(c6) && mouseY > PorcentajeY(c7) && mouseY < PorcentajeY(c8)) {
     pantalla = b3;
    }
 }
 void Teclas(){    
    
 juego.Reincio();
 if (pantalla == 5) {
      if (key == ENTER) {
       pantalla = 8;
       juego.inicializarJuego();
       juego.generarPaqueteRandom();
        }
    }
 if (pantalla == 5) {
      if (key == BACKSPACE) {
       pantalla = 6;
       juego.inicializarJuego();
       juego.generarPaqueteRandom();
        }
    }
 }
}

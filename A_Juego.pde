class Juego {
  PImage boton_azul;
  PImage boton_rojo;
  int pantalla;
  PFont letras; 
  PImage fondo_papel;
  int estado;
  int imagenAleatoria;
  int cantImagenes;

  int vidas = 3;
  int puntosTom;
  int puntosEduardo;

  Boton botones;
  Resultados perdi, ganoT, ganoE;
  Imagen pantallas;
  TextosGen textos1, textos2, textos3, textos4, textos5;

  Juego() {
    botones = new Boton();
    pantallas = new Imagen();
    textos1 = new TextosGen();
    textos2 = new TextosGen();
    textos3 = new TextosGen();
    textos4 = new TextosGen();   
    textos5 = new TextosGen();
    perdi = new Resultados();
    ganoT = new Resultados();   
    ganoE = new Resultados();
    //  estado = 1;
    letras = loadFont ("FrenchScriptMT-48.vlw");
    fondo_papel = loadImage("pergamino_fondo.png");
    boton_azul = loadImage ("azul.png") ;
    boton_rojo = loadImage ("naranja.png") ;
    textFont(letras); 

    cantImagenes = 8;
  }
  boolean estoyJugando() {
    return estado == 0;
  }

  boolean perdi() {
    return estado == 2;
  }

  boolean ganeTom() {
    return estado == 3;
  }

  boolean ganeEduardo() {
    return estado == 4;
  }
  //---------------- dibujar las pantallas correspondientes --------------------------//
  void Dibujar() {
    pantallas();
    dibujarJuego();
    vidas();
  }
  void dibujarJuego() {
    if (estoyJugando()) {
      aJugar();
    } else if (perdi()) {
      perdi.fin("Perdiste!!!! \n Los guardias los\n han encontrado\n Preciona R para volver a jugar");
    } else if (ganeTom()) {
      ganoT.fin("Tom se viste rápido y está listo para ver cómo\n es la vida de Eduardo! \n Preciona R para volver a jugar\n o Enter para seguir");
    } else if (ganeEduardo()) {
      ganoE.fin("Eduardo se viste rápido y está listo para ver cómo\n es la vida de Tom!!!! \n Preciona R para volver a jugar\n o presiona Backspace para seguir");
    }
  }
  void aJugar() {
    pantallas();
  }
  void pantallas() {

    image (fondo_papel, PorcentajeX(0), PorcentajeY(0), width, height);
    botones.boton(boton_azul, "Tom", 30, 90, 455, 155, 490);
    botones.boton(boton_rojo, "Eduardo", 30, 560, 455, 622, 490);
    dibujarPantalla();
  }
  void inicializarJuego() {
    estado = 0;
    puntosEduardo=0;
    puntosTom=0;
    vidas=3;
    pantallas.dibujarImagenes((width/2)-100, (height/2)-100, imagenAleatoria);
  }
  void generarAleatorios() {
    imagenAleatoria = floor(random(0, cantImagenes));
  }

  void dibujarPantalla() {
    pushStyle();
    pantallas.dibujarImagenes((width/2)-100, (height/2)-100, imagenAleatoria);
    textAlign(CENTER);
    println(imagenAleatoria, estado);
    fill(0);
    textos1.TextosJuego("puntuación Tom:" + puntosTom, width/2, height/10, 40, 0);
    textos2.TextosJuego("puntuación Eduardo:" + puntosEduardo, width/2, height/7, 40, 0);
    textos3.TextosJuego("vidas restantes:" + vidas, width/2, height/5, 40, 0);
    textos4.TextosJuego("Elige la ropa para\n cambiarle a los chicos,\n recuerda que se estan\n cambiando de ropa y que...\n ¡En cualquier momento\n llegan los guardias!", 120, 270, 30, 0);
    textos4.TextosJuego("¿Quién se pondrá esta prenda?", width/2-10, height -height/12, 40, 0);
    popStyle();
  } 

  //////////------------//////////------------//////////------ FUNCIONES INTERNAS ----------//////////------------//////////------------//////////---

  //-----------CLICK & botones ------------//

  void clickBot() {
    if (clickBotonTom()) {
      matchTom();
    } else if (clickBotonEduardo()) {
      matchEduardo();
    }
  }
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
  void vidas() {
    if (vidas == 0) {
      estado = 2;
    } else if (puntosTom == 5) {
      estado = 3;
    } else if (puntosEduardo == 5) {
      estado = 4;
    }
  }
  void generarPaqueteRandom () {
    generarAleatorios();
    pantallas.dibujarImagenes((width/2)-100, (height/2)-100, imagenAleatoria);
  }
  void Reincio() {
    if (ganeTom() || perdi()|| ganeEduardo()) {
      if (key == 'r' || key == 'R' ) {
        inicializarJuego();
        generarPaqueteRandom();
      }
    }
    
  }

  //---------------RESIZE---------------------------//

  int PorcentajeX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int PorcentajeY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
}

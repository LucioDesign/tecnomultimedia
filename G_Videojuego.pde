class Videojuego{
  PImage boton_azul;
  PImage boton_rojo;
  PFont letras; 
  PImage fondo_papel;
  int estado;
  int cantImagenes;
  int imagenAleatoria;

  BotonJuego botonT, botonE;
  Vidas  vidas;
  Ropa ropa;
  Proporcion proporcion;
  
  Videojuego(){
    letras = loadFont ("FrenchScriptMT-48.vlw");
    fondo_papel = loadImage("pergamino_fondo.png");
    boton_azul = loadImage ("azul.png") ;
    boton_rojo = loadImage ("naranja.png") ;
    textFont(letras); 
    Proporcion proporcion = new Proporcion();
    botonT = new BotonJuego(boton_azul, "Tom", 90, 455, 155, 490, proporcion);
    botonE = new BotonJuego(boton_rojo, "Eduardo", 560, 455, 622, 490, proporcion);
    ropa = new Ropa((width/2)-100, (height/2)-100, proporcion);
    vidas = new Vidas();

    cantImagenes = 8;
  }
  
  //-------------------- definición de estados -------------------------//
  
 int controlarGanarOPerder() {

    if (vidas.haPerdido()) {   
      return estado = 2; //perdí
   } else if ( vidas.haGanadoT()) {
      return estado = 3; //gané con Tom
    } else if ( vidas.haGanadoE()) {
      return estado = 4; //gané con Eduardo
    } 
    return 0; // sigo jugando
    }

  //---------------- dibujar las pantallas correspondientes --------------------------//
  
  void generarAleatorios() {
    imagenAleatoria = floor(random(0, cantImagenes));
  }
  void dibujar() {
    textAlign(CENTER);
    image (fondo_papel, 0, 0, width, height);
    pushStyle();
    botonE.dibujar();
    botonT.dibujar();
    textAlign(LEFT);
    popStyle();
    vidas.dibujar();
    ropa.dibujar(imagenAleatoria);
    println(estado);
    fill(0);
    controlarGanarOPerder();
    
  }
  void inicializarJuego() {
    estado = 0;
    vidas.puntosEduardo=0;
    vidas.puntosTom=0;
    vidas.vidas=3;
    ropa.dibujar(imagenAleatoria);
  }



  //////////------------//////////------------//////////------ FUNCIONES TECLAS/MOUSE ----------//////////------------//////////------------//////////---

  //-----------CLICK & botones ------------//

  void clickBot() {

    if (botonT.clickBotonTom()) {
      vidas.matchTom(imagenAleatoria);
      generarAleatorios();
    } else if (botonE.clickBotonEduardo()) {
      vidas.matchEduardo(imagenAleatoria);
      generarAleatorios();
    }
  }
  void Reinicio() {
    if (vidas.haPerdido() || vidas.haGanadoT() || vidas.haGanadoE()) {
      if (key == ENTER) {
       controlador.pantallaActual = controlador.pantallas[8];    
       inicializarJuego();
        } else if (key == BACKSPACE) {
      controlador.pantallaActual = controlador.pantallas[6];
      inicializarJuego();
        } else if (key == 'r' || key == 'R' ) {
      inicializarJuego();
      generarAleatorios();
      controlador.pantallaActual = controlador.pantallas[1];
      inicializarJuego();
      }
    }
  }
}

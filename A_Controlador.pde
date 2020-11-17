class Controlador {
//  SoundFile musica;
  Pantalla pantallaActual;
  int cantidadPantallas = 13;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  Textos textos = new Textos();
 Proporcion proporcion = new Proporcion();

  PImage [] imag = new PImage [cantidadPantallas];
  int pantalla;
  PFont letras; 
  PImage boton_verde;
  PImage boton_azul;
  PImage boton_rojo;
  PImage boton_amarillo;

  int posY;
Creditos creditos;

  Controlador() {

    int pantalla;
    Boton boton1, boton2;
  //  musica = new SoundFile(pro,"greensleeves2.wav");
  //  this.musica = musica;
  //  musica.loop();
    letras = loadFont ("FrenchScriptMT-48.vlw");
    boton_verde = loadImage ("verde.png") ;
    boton_azul = loadImage ("azul.png") ;
    boton_rojo = loadImage ("naranja.png") ;
    boton_amarillo = loadImage ("amarillo.png") ;
    textFont(letras);
    
    posY=600;

    cargarFondos();

    pantallas = new Pantalla [cantidadPantallas];
    //Creo la pantalla 0
    pantalla = 0;
    boton1 = new Boton(proporcion, boton_azul, "Inicio", 30, 90, 455, 125, 490, 2);
    boton2 = new Boton(proporcion, boton_rojo, "Créditos", 30, 560, 455, 592, 490, 1);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, boton2, 100, 150, 130, 100, 80, null);/////

    //Creo la pantalla 1  *CREDITOS*
    pantalla = 1;
    creditos = new Creditos (proporcion, 100, posY);
    boton1 = new Boton(proporcion, boton_rojo, "Menú", 30, 60, 50, 95, 85, 0);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 300, 120, 530, 320, 80, creditos);//////


    //Creo la pantalla 2
    pantalla = 2;
    boton1 = new Boton(proporcion, boton_amarillo, "Jugar con Tom", 25, 390, 455, 415, 490, 3);
    boton2 = new Boton(proporcion, boton_verde, "Jugar con Eduardo", 25, 610, 455, 620, 490, 4);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, boton2, 20, 60, -50, 275, 40, null);/////

    //Creo la pantalla 3
    pantalla = 3;
    boton1 = new Boton(proporcion, boton_azul, "Continuar", 25, 610, 455, 640, 490, 5);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 4
    pantalla = 4;
    boton1 = new Boton(proporcion, boton_azul, "Continuar", 25, 610, 455, 640, 490, 5);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 5
    pantalla = 5;
    boton1 = new Boton(proporcion, boton_amarillo, "Jugar con Tom", 25, 550, 390, 575, 425, 8);
    boton2 = new Boton(proporcion, boton_verde, "Jugar con Eduardo", 25, 556, 455, 568, 490, 6);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, boton2, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 6
    pantalla = 6;
    boton1 = new Boton(proporcion, boton_azul, "Continuar", 25, 610, 455, 640, 490, 7);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 7
    pantalla = 7;
    boton1 = new Boton(proporcion, boton_amarillo, "Quedarse", 25, 550, 390, 595, 425, 11);
    boton2 = new Boton(proporcion, boton_verde, "Reclamar el trono", 25, 556, 455, 568, 490, 10);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, boton2, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 8
    pantalla = 8;
    boton1 = new Boton(proporcion, boton_azul, "Continuar", 25, 610, 455, 640, 490, 9);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 9
    pantalla = 9;
    boton1 = new Boton(proporcion, boton_amarillo, "Decir la verdad", 25, 550, 390, 575, 425, 10);
    boton2 = new Boton(proporcion, boton_verde, "Convertirse en rey", 25, 556, 455, 568, 490, 12);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, boton2, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 10
    pantalla = 10;
    boton1 = new Boton(proporcion, boton_rojo, "Fin", 25, 610, 455, 663, 490, 1);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 11
    pantalla = 11;
    boton1 = new Boton(proporcion, boton_rojo, "Fin", 25, 610, 455, 663, 490, 1);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Creo la pantalla 12
    pantalla = 12;
    boton1 = new Boton(proporcion, boton_rojo, "Fin", 25, 610, 455, 663, 490, 1);
    pantallas[pantalla] = new Pantalla(proporcion, imag[pantalla], textos.TextoPantalla(pantalla), boton1, null, 20, 60, 525, 40, 40, null);

    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }

  void dibujar() {
    pantallaActual.dibujar();
    
  }

  void cargarFondos() {
    for (int i=0; i < imag.length; i++) {
      imag [i] = loadImage(i + ".png");
    }
  }


  void mouseClicked() {
  creditos.reiniciar();
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
  }
}

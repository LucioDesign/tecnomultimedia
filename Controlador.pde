class Controlador{
//  int pantalla;
  int cantPantalla= 13;
  int p2_Y;
  int p2_Y_inicial;
  Textos textos = new Textos();
  Pantalla [] pantallas = new Pantalla [cantPantalla];
  PImage [] imag = new PImage [13];
  Pantalla pantallaActual;
/*    
  letras = loadFont ("FrenchScriptMT-48.vlw");
  fondo_papel = loadImage ("pergamino_fondo.png") ;
  boton_verde = loadImage ("verde.png") ;
  boton_azul = loadImage ("azul.png") ;
  boton_rojo = loadImage ("naranja.png") ;
  boton_amarillo = loadImage ("amarillo.png") ;
   textFont(letras);
*/  
  Pantalla pantallasGen;
 Controlador(){
int pantalla;
//int p2_Y_inicial = 500;
//int p2_Y = p2_Y_inicial;
 cargarfondos();
 pantallas = new Pantalla [cantPantalla];
//pantallasGen = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));
pantalla = 0;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 1
pantalla = 1;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 2
pantalla = 2;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 3
pantalla = 3;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 4
pantalla = 4;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 5
pantalla = 5;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 6
pantalla = 6;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 7
pantalla = 7;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 8
pantalla = 8;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 9
pantalla = 9;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 10
pantalla = 10;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 11
pantalla = 11;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));

//pantalla 12
pantalla = 12;
pantallas[pantalla] = new Pantalla(imag[pantalla],textos.TextoPantalla(pantalla));
//pantalla actual
pantallaActual = pantallas[0];
}


//---------------RESIZE---------------------------//
int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}

void cargarfondos(){
 for (int i=0; i < imag.length; i++) {
   imag [i] = loadImage(i + ".png");
   }   
}
void dibujar(){
//pantallasGen.pantallasGenericas();
}



}

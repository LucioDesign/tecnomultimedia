class Pantalla{
  
  PImage [] imag = new PImage [13];
Textos textos = new Textos();

Pantalla(){

  
 for (int i=0; i < imag.length; i++) {
   imag [i] = loadImage(i + ".png");
   } 
      
}
//---------------RESIZE---------------------------//
int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}


//----------------------------------- PANTALLA GENÉRICA -------------------------------//

void pantallasGenericas(int pantalla) {
  fill(0);
  textSize(40);
text(textos.TextoPantalla(pantalla),PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(525),PorcentajeY(40));
}


//------------------------------------ MENÚ ------------------------------------------//

void pantallaMenu(int pantalla) {
  fill(0);
  textSize(80);
  text("El Príncipe y el Mendigo", PorcentajeX(100),PorcentajeY (150));
  image (imag[pantalla],PorcentajeX(130),PorcentajeY(100));

  
}

//---------------- CRÉDITOS---------------------//

void pantallaCreditos(int pantalla, int p2_Y) {
  fill(0);
  textSize(80);
  text("Créditos", PorcentajeX(300), PorcentajeY(120));
  textSize(50);
  text("Basado en la novela original de Mark Twain\n \n- Dirigido por LucioJaurena\n- Arte por LucioJaurena\n- Programado por LucioJaurena\n- Escrito por LucioJaurena", PorcentajeX(100),PorcentajeY( p2_Y));
  image (imag[pantalla],PorcentajeX(530),PorcentajeY(320));
  

 }
 
 //--------------------- Inicio de Historia --------------------//
void pantallaHistoria(int pantalla) {
  fill(0);
  textSize(40);
text(textos.TextoPantalla(pantalla),PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(-50),PorcentajeY(275));
}
}

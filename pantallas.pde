//----------------------------------- PANTALLA GENÉRICA -------------------------------//

void pantallasGenericas(int pantalla) {
  fill(0);
  textSize(40);
text(texto[pantalla],PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(525),PorcentajeY(40));
}


//------------------------------------ MENÚ ------------------------------------------//

void pantallaMenu() {
  fill(0);
  textSize(80);
  text("El Príncipe y el Mendigo", PorcentajeX(100),PorcentajeY (150));
  image (imag[pantalla],PorcentajeX(130),PorcentajeY(100));

    boton(boton_rojo,"Créditos",30,560,455,592,490);
    boton(boton_azul,"Inicio",30,90,455,125,490);
}

//---------------- CRÉDITOS---------------------//

void pantallaCreditos() {
  fill(0);
  textSize(80);
  text("Créditos", PorcentajeX(300), PorcentajeY(120));
  textSize(50);
  text("Basado en la novela original de Mark Twain\n \n- Dirigido por LucioJaurena\n- Arte por LucioJaurena\n- Programado por LucioJaurena\n- Escrito por LucioJaurena", PorcentajeX(100),PorcentajeY( p2_Y));
  image (imag[pantalla],PorcentajeX(530),PorcentajeY(320));
  
    boton(boton_rojo,"Menú",30,60,50,95,85);
 
  if ( p2_Y > 200) {
    p2_Y--;
  }
 }
 
 //--------------------- Inicio de Historia --------------------//
void pantallaHistoria() {
  fill(0);
  textSize(40);
text(texto[pantalla],PorcentajeX(20), PorcentajeY(60));
image (imag[pantalla],PorcentajeX(-50),PorcentajeY(275));

   boton(boton_amarillo,"Jugar con Tom",25,390,455,415,490);
   boton( boton_verde,"Jugar con Eduardo",25,610, 455,620,490);
}

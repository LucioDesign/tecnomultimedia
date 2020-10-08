//------------------------- BOTÓN GENÉRICO --------------------------------//

void boton(PImage colorBoton, String textBot, int TextSize, int BotPosX, int BotPosY, int posXtext, int posYtext){
   image(colorBoton,PorcentajeX(BotPosX),PorcentajeY(BotPosY));
   colorBoton.resize(0,62);
   fill(255);
   textSize(TextSize);
   text(textBot, PorcentajeX(posXtext),PorcentajeY(posYtext)); 
}


//----------------------- INICIALIZACIÓN DE PANTALLAS Y BOTONES -----------------------------------//
void draw() {
  image (fondo_papel,0,0);
  //background(200);

  if (pantalla == 0) {    
    pantallaMenu();
    
  } else if (pantalla == 1) {    
    pantallaCreditos();
    
  } else if (pantalla == 2) {    
    pantallaHistoria();
    
  } else if (pantalla == 3 || pantalla == 4 || pantalla == 6 || pantalla == 8) {
    
    pantallasGenericas(pantalla);
    boton(boton_azul,"Continuar",25,610,455,640,490);
    
  } else if (pantalla == 5) {
    
    pantallasGenericas(pantalla);   
    boton(boton_amarillo,"Jugar con Tom",25,550,390,575,425);
    boton(boton_verde,"Jugar con Eduardo",25,556,455,568,490);
    
  } else if (pantalla == 7) {
    
    pantallasGenericas(pantalla);
    boton(boton_amarillo,"Quedarse",25,550,390,595,425);
    boton(boton_verde,"Reclamar el trono",25,556,455,568,490);
    
  } else if (pantalla == 9) {
    
    pantallasGenericas(pantalla);
    boton(boton_amarillo,"Decir la verdad",25,550,390,575,425);
    boton(boton_verde,"Convertirse en rey",25,556,455,568,490);
    
  } else if (pantalla == 10 || pantalla == 11 || pantalla == 12) {
    
    pantallasGenericas(pantalla);
    boton(boton_rojo,"Fin",25,610,455,663,490);
    
  }
   println(pantalla);
}

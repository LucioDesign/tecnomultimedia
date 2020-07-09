void mouseClicked(){
  if (pantalla == 1) {
     //Botón Créditos
  if (mouseX > 560 && mouseX < 695 && mouseY > 455 && mouseY < 515) {
    pantalla = 2;
  }

  //Botón Inicio
  if (mouseX > 90 && mouseX < 255 && mouseY > 455 && mouseY < 515) {
    pantalla = 3;
  }
  } else if (pantalla == 2) {
     //Botón Presentación
  if (mouseX > 60 && mouseX < 195 && mouseY > 50 && mouseY < 110) {
    p2_Y = p2_Y_inicial;
    pantalla = 1;
  }
  } else if (pantalla == 3) {
    //Botón jugar con Tom
    if (mouseX > 390 && mouseX < 540 && mouseY > 455 && mouseY < 515) {
      pantalla = 4;
    
  } else if (pantalla == 3) {
    //Botón jugar con Eduardo
    if (mouseX > 610 && mouseX < 760 && mouseY > 455 && mouseY < 515) {
      pantalla = 5;
  } 
  } } else if (pantalla == 4) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 6;
  } 
  }else if (pantalla == 5) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 6;
    }
   } else if (pantalla == 6) {
    //Botón Jugar con Tom
    if (mouseX > 550 && mouseX < 700 && mouseY > 390 && mouseY < 450) {
      pantalla = 9;
    
  } else if (pantalla == 6) {
    //Botón jugar con Eduardo
    if (mouseX > 556 && mouseX < 706 && mouseY > 455 && mouseY < 515) {
      pantalla = 7;
    }} 
   }else if (pantalla == 7) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 8;
    }
  
   } else if (pantalla == 8) {
    //Botón Quedarse
    if (mouseX > 550 && mouseX < 700 && mouseY > 390 && mouseY < 450) {
      pantalla = 12;
    
  } else if (pantalla == 8) {
    //Botón reclamar el trono
    if (mouseX > 556 && mouseX < 706 && mouseY > 455 && mouseY < 515) {
      pantalla = 11;
    }} 
   } else if (pantalla == 9) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 10;
    }
   }else if (pantalla == 10) {
    //Botón Decir la verdad
    if (mouseX > 550 && mouseX < 700 && mouseY > 390 && mouseY < 450) {
      pantalla = 11;
    
  } else if (pantalla == 10) {
    //Botón Convertirse en rey
    if (mouseX > 556 && mouseX < 706 && mouseY > 455 && mouseY < 515) {
      pantalla = 13;
    }} 
   } else if (pantalla == 11) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 2;
    }
   }else if (pantalla == 12) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 2;
    }
   }else if (pantalla == 13) {
    //Botón Continuar
    if (mouseX > 610 && mouseX < 745 && mouseY > 455 && mouseY < 515) {
      pantalla = 2;
    }
   }
}

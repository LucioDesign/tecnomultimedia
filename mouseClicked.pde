void mouseClicked(){
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
   botones (515,700,390,450,556,706,455,515,8,6);
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
   
 

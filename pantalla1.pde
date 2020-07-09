void pantalla1() {
  fill(0);
  textSize(80);
  text("El Príncipe y el Mendigo", 100, 150);
  image (pantalla_1,130,100);
  pantalla_1.resize(0,400);
 if (pantalla == 1) {
    player.play();
  }

  //Botón Créditos
  
  image (boton_naranja,560,455);
  fill(255);
  textSize(30);
  text("Créditos", 592,490);
  fill(255,255,255,50);
  //rect(560,455,135,60);
 

  //Botón Inicio
  image (boton_azul,90,455);
  fill(255);
  textSize(30);
  text("Inicio", 125,490);
    fill(255,255,255,50);
  //rect(90,455,135,60);
}

void pantalla2() {
  fill(0);
  textSize(80);
  text("Créditos", 300, 120);
  textSize(50);
  text("Basado en la novela original de Mark Twain\n \n- Dirigido por LucioJaurena\n- Arte por LucioJaurena\n- Programado por LucioJaurena\n- Escrito por LucioJaurena", 100, p2_Y);
  image (pantalla_2,530,320);
  pantalla_2.resize(0,230);
  
  if ( p2_Y > 200) {
    p2_Y--;
  }

  //Botón Presentación
  image (boton_naranja,60,50);
  fill(255);
  textSize(30);
  text("Menú", 95,85);
  fill(255,255,255,50);
  //rect(60,50,135,60);

 
}

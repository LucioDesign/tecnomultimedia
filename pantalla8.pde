void pantalla8() {
   fill(0);
  textSize(40);
text ("Un día, escapando del borracho padre\nde Tom, se perdió en las calles, y\n estuvo a punto de ser asaltado por unos\njóvenes bandidos, cuando Miles, un\nveterano, lo rescata y lo ayuda a volver.\nPoco después, Eduardo se entera de que\nsu padre, el rey Enrique ha muerto,\ncon dolor, tiene que decidir si quedarse\ncon su nueva familia o reclamar el\ntrono real...",20,60);
image (pantalla_8,470,20);
pantalla_8.resize(0,350);

//Botón "Quedarse"
  //Botón Inicio
  image (boton_amarillo,550,390);
    boton_amarillo.resize(0,62);
  fill(255);
  textSize(25);
  text("Quedarse", 595,425);
    fill(255,255,255,50);
  //rect(550,390,150,60);
  
//Botón "Reclamar el trono"
  image (boton_verde,556,455);
   boton_verde.resize(0,62);
  fill(255);
  textSize(25);
  text("Reclamar el trono", 568,490);
  fill(255,255,255,50);
  //rect(556,455,150,60);
  
}

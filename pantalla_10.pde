void pantalla_10() {
   fill(0);
  textSize(40);
text ("Un día, Tom se despierta con la noticia de\nque su supuesto padre, el rey Enrique,\nha muerto, y que es su deber asumir el trono.\nTom, que no se esperaba esta situación, no\nsabía qué hacer. Intentó decirles que él no\nera el verdadero Eduardo, pero nadie le creía,\npor lo que se puso a pensar qué podía hacer,\npor un lado, podía aceptar el trono,\nconvirtiéndose en el Rey de Inglaterra,\ny por otro lado podía seguir insistiendo,\nganando tiempo para que llegue el\nverdadero Eduardo.",20,60);
image (pantalla_10,520,20);
pantalla_10.resize(0,350);

//Botón "Decir la verdad"
  //Botón Inicio
  image (boton_amarillo,550,390);
    boton_amarillo.resize(0,62);
  fill(255);
  textSize(25);
  text("Decir la verdad", 575,425);
    fill(255,255,255,50);
  //rect(550,390,150,60);
  
//Botón "Convertirse en rey"
  image (boton_verde,556,455);
   boton_verde.resize(0,62);
  fill(255);
  textSize(25);
  text("Convertirse en rey", 568,490);
  fill(255,255,255,50);
  //rect(556,455,150,60);
  
}

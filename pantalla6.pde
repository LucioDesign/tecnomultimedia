void pantalla6() {
  fill(0);
  textSize(40);
text ("En ese momento se dieron cuenta de lo parecidos\nque eran y decidieron cambiar de vestimenta,\nhaciéndose pasar por el otro, para poder\nexperimentar cómo es su vida. Los dos\nniños se terminaron de vestir y en\nsecreto, salieron como si fueran el otro\nsin que nadie se dé cuenta. Eduardo se\nlleva consigo el Sello Real, como\nprueba de su identidad.",20,60);
image (pantalla_6,470,40);
pantalla_6.resize(0,250);

//Botón "Jugar con Tom"
  //Botón Inicio
  image (boton_amarillo,550,390);
    boton_amarillo.resize(0,62);
  fill(255);
  textSize(25);
  text("Jugar con Tom", 575,425);
    fill(255,255,255,50);
  //rect(550,390,150,60);
  
//Botón "Jugar con Eduardo"
  image (boton_verde,556,455);
   boton_verde.resize(0,62);
  fill(255);
  textSize(25);
  text("Jugar con Eduardo", 568,490);
  fill(255,255,255,50);
  //rect(556,455,150,60);
}

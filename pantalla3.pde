void pantalla3() {
  fill(0);
  textSize(40);
  text("La historia comienza en 1547, en la ciudad de Londres, Inglaterra,\nque estaba gobernada por Enrique VIII. La ciudad se encontraba\n en un clima de estabilidad, pero con una desigualdad muy profunda...\n en ella había dos niños, separados por mundos completamente distintos,\n uno era Tom, el hijo de una familia pobre que siempre aspiró a tener\nuna mejor vida, y el otro era Eduardo, el hijo del Rey, que era un\nniño solitario e infeliz, que solo quería tener un amigo para jugar...", 20, 60);
image (pantalla_3,-50,275);
pantalla_3.resize(0,400);

//Botón "Jugar con Tom"
  //Botón Inicio
  image (boton_amarillo,390,455);
    boton_amarillo.resize(0,62);
  fill(255);
  textSize(25);
  text("Jugar con Tom", 415,490);
    fill(255,255,255,50);
  //rect(390,455,150,60);
  
//Botón "Jugar con Eduardo"
  image (boton_verde,610,455);
   boton_verde.resize(0,62);
  fill(255);
  textSize(25);
  text("Jugar con Eduardo", 620,490);
  fill(255,255,255,50);
  //rect(610,455,150,60);
 

}

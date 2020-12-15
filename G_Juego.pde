class Juego {

  int estadoJ;
  
  Videojuego videojuego;
  
  Juego() {
    inicializar();
    videojuego = new Videojuego();
    
  }
  void dibujar(){
  puntaje();
  dibujarJuego();
  }
  void dibujarJuego() {
    pushStyle();
    if (estadoJ == 0) {
      videojuego.dibujar();
      DibujarMensaje("Elige la ropa para\n cambiarle a los chicos,\n recuerda que se estan\n cambiando de ropa y que...\n ¡En cualquier momento\n llegan los guardias!",  120, 270, 30, 0);
      DibujarMensaje("¿Quién se pondrá esta prenda?", width/2-10, height -height/12, 40, 0);
  } else if (estadoJ == 2) {
      background(0);
      DibujarMensaje("Perdiste!!!! \n Los guardias los\n han encontrado\n Preciona R para volver a jugar", width/2, height/2, 30, 255);
    } else if (estadoJ == 3) {
      background(0);
      DibujarMensaje("Tom se viste rápido y está listo para ver cómo\n es la vida de Eduardo! \n Preciona Enter para seguir",  width/2, height/2, 30, 255);
    } else if (estadoJ == 4) {
      background(0);
      DibujarMensaje("Eduardo se viste rápido y está listo para ver cómo\n es la vida de Tom!!!! \n Preciona Backspace para seguir",  width/2, height/2, 30, 255);
    }
    popStyle();
  }

   void puntaje() {
    if (videojuego.controlarGanarOPerder() == 2) {
      estadoJ = videojuego.controlarGanarOPerder();
    } else if (videojuego.controlarGanarOPerder() == 3) {
      estadoJ = videojuego.controlarGanarOPerder();
    } else if (videojuego.controlarGanarOPerder() == 4) {
      estadoJ = videojuego.controlarGanarOPerder();
    } else {
      estadoJ = 0; }
  }

  
  void DibujarMensaje(String texto, int posX, int posY,  int tamTexto, int colorT){
    pushStyle();
    textSize(tamTexto);
    fill(colorT);
    textAlign(CENTER);
    text(texto,posX,posY);
    popStyle();
  }
  void clickMouse(){
   videojuego.clickBot();
   }
   void teclas(){
   videojuego.Reinicio();
   }
   void inicializar(){
   }
   

}

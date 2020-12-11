class BotonJuego {
  
  Proporcion proporcion;
  PImage colorBoton;
  String textBot;
  int BotPosX;
  int BotPosY;
  int posXtext;
  int posYtext;

  BotonJuego(PImage colorBoton, String textBot, int BotPosX, int BotPosY, int posXtext, int posYtext, Proporcion proporcion) {
    this.colorBoton = colorBoton;
    this.textBot = textBot;
    this.BotPosX = BotPosX;
    this.BotPosY = BotPosY;
    this.posXtext = posXtext;
    this.posYtext = posYtext;
    this.proporcion = proporcion;
  }

  //------------------------- BOTÓN GENÉRICO --------------------------------//

  void dibujar() {
    pushStyle();
    image(colorBoton, proporcion.propX(BotPosX), proporcion.propY(BotPosY));
    colorBoton.resize(0, 62);
    fill(255);
    textSize(30);
    text(textBot, proporcion.propX(posXtext), proporcion.propY(posYtext));
    popStyle();

  }
  boolean clickBotonTom() {
    if (mouseX > proporcion.propX(90) && mouseX < proporcion.propX(255) && mouseY > proporcion.propY(455) && mouseY < proporcion.propY(515)) {
      return true;
    }
    return false;
  }

  boolean clickBotonEduardo() {
    if (mouseX > proporcion.propX(560) && mouseX < proporcion.propX(695) && mouseY > proporcion.propY(455) && mouseY < proporcion.propY(515)) {
      return true;
    }
    return false;
  }
}

class Boton{
    Proporcion proporcion;
  int TextSize, BotPosX, BotPosY, posXtext, posYtext, pantallaAIr, ancho, alto;
  PImage colorBoton;
  String textBot;
  
  Boton(Proporcion proporcion, PImage colorBoton, String textBot, int TextSize, int BotPosX, int BotPosY, int posXtext, int posYtext, int pantallaAIr){
    this.colorBoton = colorBoton;
    this.textBot = textBot;
    this.TextSize = TextSize;
    this.pantallaAIr = pantallaAIr;
    this.BotPosX = BotPosX;
    this.BotPosY = BotPosY;
    this.posXtext = posXtext;
    this.posYtext = posYtext;
    this.proporcion = proporcion;
    ancho = 135;
    alto = 60;

  }
  
  void dibujar(){
   pushStyle();
   image(colorBoton,proporcion.propX(BotPosX),proporcion.propY(BotPosY));
   colorBoton.resize(proporcion.propX(0),proporcion.propY(62));
   fill(255);
   textSize(TextSize);
   text(textBot,proporcion.propX(posXtext), proporcion.propY(posYtext)); 
   popStyle();
}  
  
  int mouseClicked(){
    if(mouseX > proporcion.propX(BotPosX) && mouseX < proporcion.propX(BotPosX + ancho) && mouseY > proporcion.propY(BotPosY) && mouseY < proporcion.propY(BotPosY + alto) ){
      return pantallaAIr;
    }
    return -1;
  }
  
}

class Botones{
PImage colorBoton;
String textBot;
int TextSize;
int BotPosX;
int BotPosY;
int posXtext;
int posYtext;
Botones(PImage colorBoton, String textBot, int TextSize, int BotPosX, int BotPosY, int posXtext, int posYtext){
  this.colorBoton = colorBoton;
  this.textBot = textBot;
  this.TextSize = TextSize;
  this.BotPosX = BotPosX;
  this.BotPosY = BotPosY;
  this.posXtext = posXtext;
  this.posYtext = posYtext;
  
 
  
}
void dibujar(){
image(colorBoton,PorcentajeX(BotPosX),PorcentajeY(BotPosY));
   colorBoton.resize(0,62);
   fill(255);
   textSize(TextSize);
   text(textBot, PorcentajeX(posXtext),PorcentajeY(posYtext));
}
 int PorcentajeX(int valor){
    return round(map(valor,0,800,0,width));
}
int PorcentajeY(int valor){
    return round(map(valor,0,600,0,height));
}

}

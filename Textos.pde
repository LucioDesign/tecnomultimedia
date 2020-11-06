class Textos{
String texto;
int puntuacion;
int posX;
int posY;
int tamTexto;

Textos ( String texto, int posX,int posY){
  this.texto = texto;
//   this.puntuacion = puntuacion;
    this.posX = posX;
     this.posY = posY;
 //    this.tamTexto = tamTexto;
}
 void textosPuntajes(){  

text (texto,posX, posY);
//textSize(tamTexto);
}
}
//fill(0);
//    text("Elige la ropa para\n cambiarle a los chicos,\n recuerda que se estan\n cambiando de ropa y que...\n ¡En cualquier momento\n llegan los guardias!",120,270);

//  text("puntuación Tom:" + puntosTom, width/2, height/10);
//  text("puntuación Eduardo:" + puntosEduardo, width/2, height/7);
//  text("vidas restantes:" + vidas, width/2, height/5);
// "Perdiste!!!! \n Los guardias los\n han encontrado\n Preciona R para volver a jugar"
// "Te vistes rápido y estas listo para ver cómo\n es la vida de Eduardo!!!! \n Preciona R para volver a jugar"
// "Te vistes rápido y estas listo para ver cómo\n es la vida de Tom!!!! \n Preciona R para volver a jugar"
// fill(255);

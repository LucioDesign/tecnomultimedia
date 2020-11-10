//import ddf.minim.*;
//Minim musica;
//AudioPlayer player;

Controlador controlador;

void setup(){
  size(800,600);
  controlador = new Controlador();
//  musica = new Minim(this);
//  player = musica.loadFile("greensleeves2.wav");
//  player.play();
}

void draw(){
  background(200);
 controlador.pantallas();
}

void mouseClicked(){
controlador.ClickBotones();
}

void keyPressed() {
controlador.Teclas();
}

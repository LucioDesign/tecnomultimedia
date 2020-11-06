Juego juego;

void setup(){
 size(800,600);
juego = new Juego();
}

void draw(){
  background(200);
  juego.dibujar();

}

void mouseClicked(){
  juego.mouseClicked();
}

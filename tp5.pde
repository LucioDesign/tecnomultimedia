Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  background(200);
  juego.Dibujar();
}

void mouseClicked() {
  juego.clickBot();
}

void keyPressed() {
  juego.Reincio();
}

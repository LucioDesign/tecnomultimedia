int cantCaminos = 5;
int cantAutos = 5;
int tamX, tamY, posX, posY;
int vidas = 3;
int [][] autosEnemigos = new int [cantCaminos][cantAutos];
String perdiste = "Perdiste";
void setup(){
  size(300,600);
  
  tamX = width / cantCaminos;
  tamY = height / 4;
  posY = height- height/20;
  
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
  
 
}

void draw(){
  background(255);
  dibujarAutosEnemigos();
  dibujarAutoPersonaje();
   textSize(30);
  fill(0);
  text("vidas:" + vidas, height/30,width/0.52);
}

void keyPressed(){
  moverAutoPersonaje();
  }
  

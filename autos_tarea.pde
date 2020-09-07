int cantCaminos = 5;
int cantAutos = 5;
int tamX, tamY, posX, posY;
int vidas = 3;
int tiempo = 1;
int [][] autosEnemigos = new int [cantCaminos][cantAutos];

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
   textSize(20);
  fill(0);
  text("vidas:" + vidas, height/30,width/0.52);
  text ("puntos:"+ tiempo,height/4,width/0.52);
    tiempo +=1;
}

void keyPressed(){
  moverAutoPersonaje();
  }
  

int cantH = 10;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;
//degrade bolita
int [] xposB = new int [width/2];
int [] yposB = new int [height - tam/2];
int contaVidasP = 0;
int Vidas = 3;



void setup() {
  size(500, 500);
  tam = height/cantH;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);
 //degrade bolita 
  for (int i = 0; i < xposB.length; i++){
  xposB[i] = 0;
  yposB[i] = 0;
}
  
  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }
  
  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;
}

void draw() {  
  tam = height/cantH;

  background(200);
  
  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    fill(255);
    ellipse(posX[h], h*tam + tam/2, tam, tam);
    //Calculo la nueva posición
    posX[h] = posX[h] + dirX[h];
    //COLISIÓN!!!!!
     if(dist(posX[h],h*tam + tam/2,personajePosX,personajePosY)<=tam-1){
       personajePosY = height - tam/2;
       contaVidasP = 0;
       contaVidasP = contaVidasP + 1;
       println (contaVidasP);
       Vidas = Vidas - contaVidasP;
      
  
   
 }//RESTART
 if (Vidas <= 0){
   background (0);
   text(("¡Perdiste!\nPresiona la tecla R para comenzar de nuevo"),width/2, height/2);
   fill(0);
 
 }
 if (personajePosY <= 0){
   background (0);
     fill(255, 233, 0);
   text(("¡GANASTE!\nPresiona la tecla R para comenzar de nuevo"),width/2, height/2);
   fill(0);
        
 }
  //VIDAS
  fill(0);
  text(("vidas: " + Vidas), width- tam,height - tam/2);
    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
  }

 //personaje 
  fill(255,0,0);
  ellipse(personajePosX, personajePosY, tam, tam);
  for (int i = 0; i < xposB.length-1;i++){
   xposB[i] = xposB[i+1];
   yposB[i] = yposB[i+1];

  }
  xposB[xposB.length-1] = personajePosX;
  yposB[xposB.length-1] = personajePosY;
  for (int i = 0; i < xposB.length;i++){
    noStroke();
    fill(255-i*1,0,0);
    ellipse(xposB[i], yposB[i],i,i);
  }

}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - tam;
  } else if (keyCode == DOWN) {
    personajePosY = (personajePosY + tam);
  }
  //RESTART tanto en MAYÚSCULA como en minúscula
   if (key == 'r') {
        background (200);
          personajePosX = width/2;
          personajePosY = height - tam/2;
          contaVidasP = 0;
          Vidas = 3; 
   }
          if (key == 'R') {
        background (200);
          personajePosX = width/2;
          personajePosY = height - tam/2;
          contaVidasP = 0;
          Vidas = 3; 
}
}

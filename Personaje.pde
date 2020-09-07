void inicializarAutoPersonaje(){
  posX = 0;
}

void dibujarAutoPersonaje(){
  fill(255,0,0);
  rect(posX, posY - tamY , tamX, tamY/1.3);
  if(vidas <= 0){
       background(0);
     fill(255,200,0);
     textSize(30);
  textAlign (LEFT);
    text ("¡Perdiste!",height/8,width/1.2); 
    textSize(15);
    text("Presiona R para volver a empezar",height/18,width); 
    fill(0);
     rect(posX, height - tamY , tamX, tamY);
  }
  
  }


void moverAutoPersonaje(){
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  }   if (key == 'r') {
        background (255);
          loop();
     
     vidas = 3;
     for(int cc = 0; cc < cantCaminos; cc++){
    for(int ca = 0; ca < cantAutos; ca++){
      autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1),-2000 * ca));
  
}
     }
  }
}



  

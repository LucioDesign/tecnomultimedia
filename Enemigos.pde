void inicializarAutosEnemigos(){
  for(int cc = 0; cc < cantCaminos; cc++){
    for(int ca = 0; ca < cantAutos; ca++){
      autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1),-2000 * ca));
    }
  }
 
}

void dibujarAutosEnemigos(){
  for(int cc = 0; cc < cantCaminos; cc++){
    for(int ca = 0; ca < cantAutos; ca++){
      autosEnemigos[cc][ca]+=2;
      fill(150);
      rect(cc * tamX, autosEnemigos[cc][ca], tamX, tamY);
   if (dist(cc*tamX,autosEnemigos[cc][ca],posX,height-tamY*1.8) < tamX) {
   autosEnemigos[cc][ca] = round(random(-2000 * (ca + 1),-2000 * ca));
  vidas = vidas - 1;
   }
    
   }
     }
     
       
       
       
}

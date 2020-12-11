class Vidas {

  String textoFinal;
  int vidas = 3;
  int puntosTom;
  int puntosEduardo;
  int imagenAleatoria;
  Vidas() {

  }
  void dibujar() {
    pushStyle();
    textSize(40);
    fill(0);
    textAlign(CENTER);
    text("puntuación Tom:" + puntosTom, width/2, height/10);
    text("puntuación Eduardo:" + puntosEduardo, width/2, height/7);
    text("vidas restantes:" + vidas, width/2, height/5);
    popStyle();
  }
  
  void matchTom(int p_imagenAleatoria) {

    if (p_imagenAleatoria <= 3 ) {
      puntosTom = puntosTom + 1;      
    } else {
      vidas = vidas - 1;
    }
  }

  void matchEduardo(int p_imagenAleatoria) {

    if (p_imagenAleatoria >= 4 ) {
      puntosEduardo = puntosEduardo + 1;
    } else {
      vidas = vidas - 1;
    }
  }
  
  
  boolean haPerdido() {
  if(vidas == 0){  
    return true;
  }
  return false;
  }

  boolean haGanadoT() {
  if(puntosTom == 5){  
    return true;
  }
  return false;
  }

  boolean haGanadoE() {
  if(puntosEduardo == 5){  
    return true;
  }
  return false;
  }  
}


  

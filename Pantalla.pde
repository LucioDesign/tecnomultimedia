class Pantalla{
  Proporcion proporcion;
  PImage fondo_papel;
  PImage imagen; 
  String textoPantalla; 
  int Tam;
  int posX;
  int posY;
  int ImagPosX;
  int ImagPosY;
  Boton boton1; 
  Boton boton2;
  Creditos creditos;
  Juego juego;
  
  Pantalla(Proporcion proporcion, PImage imagen, String textoPantalla, Boton boton1, Boton boton2, int posX, int posY, int ImagPosX, int ImagPosY, int Tam, Creditos creditos, Juego juego){
    this.imagen = imagen;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.posX = posX;
    this.posY = posY;
    this.ImagPosX = ImagPosX;
    this.ImagPosY = ImagPosY;
    this.Tam = Tam;
    this.creditos = creditos;
    this.proporcion = proporcion;
    this.juego = juego;
    fondo_papel = loadImage ("pergamino_fondo.png") ;
  }

  void dibujar(){
    image(fondo_papel,proporcion.propX(0),proporcion.propY(0),width,height);
    pushStyle();
    fill(0);
    textSize(Tam);
    text(this.textoPantalla, proporcion.propX(posX), proporcion.propY(posY));
    image(this.imagen,proporcion.propX(ImagPosX), proporcion.propY(ImagPosY));
    popStyle();
 
 if(juego != null){
      juego.dibujar();
      
    }
    if(creditos != null){
      creditos.dibujar();
      
    }
    
    if(boton1 != null){
      boton1.dibujar();
    }
    
    if(boton2 != null){
      boton2.dibujar();
    }
    
  }
  int mouseClicked(){
    int pantallaAIr = -1;
    
    if(boton1 != null){
      pantallaAIr = boton1.mouseClicked();
    }
    
    if(boton2 != null && pantallaAIr == -1){
      pantallaAIr = boton2.mouseClicked();
    }
    if (juego != null)
      juego.clickMouse();
    
    return pantallaAIr;
  }
}

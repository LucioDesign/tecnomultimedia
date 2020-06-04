PImage pasto;
PImage cielo;
PImage barra;
PImage chello;
PImage agujeros;
PImage bala;
PImage hack;
PFont fuente;

//FONDO titulo
float xPosTitPasto = -200;
float xPosTitcielo = 0;
float xPosTitulo1 = -100;
 //FONDO 2 Actores 
float yPosLiam = -4500;
float yPosTextLiam = -900;
//FONDO MUSICA
float xPosHack = -3500;
float LargoCodigo = 700;
float XPosDirect = -5200;

void setup() {
  size (400,400);
  //FONDO 1 titulo
   pasto = loadImage("pasto.png");
   cielo = loadImage("cielo.jpg");
   fuente = loadFont ("ADAM.CGPRO-48.vlw");
    //FONDO 2 Actores 
   barra = loadImage ("CODIGOBARRA.png");
   bala = loadImage ("bala.png");
   agujeros = loadImage ("agujeros.png");
   hack = loadImage ("hacker.jpg");
   chello = loadImage ("chelloblanco.png");
 
  
}
void draw() {
  //FONDO 1 Titulo movimiento
  image (cielo, xPosTitcielo, 0,800,600);
    textSize(48);
    textFont(fuente);
    fill(0);
   text("   DARK\nPARADISO",90,xPosTitulo1);
 
   image(pasto,xPosTitPasto, -60,800,800);
   xPosTitPasto += 0.1;
   xPosTitcielo -= 0.15; 
   xPosTitulo1 -= -1;
   
  //FONDO 2 ACTORES
  rect (0,yPosLiam,400,4000);
   yPosLiam -= -1;
 textFont(fuente);
    fill(255);
    textSize(25);
   text("LIAM NEESON\nas Dr.Douglas", 100, yPosTextLiam);
   text("JUDI DENCH\nas PANDORA", 60, (yPosTextLiam-400));
   text("ANTHONY HOPKINS\n  as MR ROWLING", 85, (yPosTextLiam-700));
   image (barra, 20, yPosLiam+3000, 50,19);
   image (bala, 330, yPosLiam+3150, 35,60);
   image (agujeros, 250, yPosLiam+3400, 100,100);
  yPosTextLiam -= -1;
    //FONDO 3 corte
    image (hack,xPosHack,0,500,400);
    xPosHack += 1.5;
    //FONDO 4 MUSICA
    image (chello, 100,yPosLiam+1850, 200,200);
    fill(255);
    textSize(25);
    text("  MUSIC BY  \n  JOHN WILLIAMS", 85, (yPosLiam+1750));
    //CODIGO BARRA
    fill (255);
    rect(20,(yPosLiam+950), 10,LargoCodigo+300);
    rect(35,(yPosLiam+950), 8,LargoCodigo);
     rect(50,(yPosLiam+950), 12,LargoCodigo);
     rect(65,(yPosLiam+950), 5,LargoCodigo);
     rect(85,(yPosLiam+950),9,LargoCodigo);
     rect(98,(yPosLiam+950), 7,LargoCodigo);
     rect(110,(yPosLiam+950), 12,LargoCodigo);
     rect(125,(yPosLiam+950),9,LargoCodigo);
     rect(135,(yPosLiam+950), 5,LargoCodigo);
     rect(150,(yPosLiam+950), 8,LargoCodigo);
     rect(162,(yPosLiam+950), 12,LargoCodigo);
     rect(179,(yPosLiam+950), 5,LargoCodigo);
     rect(190,(yPosLiam+950),9,LargoCodigo);
     rect(205,(yPosLiam+950), 7,LargoCodigo);
     rect(215,(yPosLiam+950), 12,LargoCodigo);
     rect(235,(yPosLiam+950),9,LargoCodigo);
     rect(250,(yPosLiam+950), 5,LargoCodigo);
     rect(235,(yPosLiam+950), 8,LargoCodigo);
     rect(250,(yPosLiam+950), 12,LargoCodigo);
     rect(265,(yPosLiam+950), 5,LargoCodigo);
     rect(285,(yPosLiam+950),9,LargoCodigo);
     rect(305,(yPosLiam+950), 12,LargoCodigo);
     rect(325,(yPosLiam+950),9,LargoCodigo);
     rect(335,(yPosLiam+950), 5,LargoCodigo);
     rect(350,(yPosLiam+950), 8,LargoCodigo);
     rect(362,(yPosLiam+950), 12,LargoCodigo);
     rect(379,(yPosLiam+950), 5,LargoCodigo);
     rect(390,(yPosLiam+950),2,LargoCodigo);
     //TEXTO CODIGO
      fill (0);
      noStroke ();
       rect(XPosDirect,180,600,50);  
      XPosDirect += 1.5;
      fill(255);
    textSize(20);
    text("  DIRECTED BY  \n LUCIO JAURENA", XPosDirect +200,206);
    textSize(40);
     text("FIN",175,(yPosLiam+500));
     
}

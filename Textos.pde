class Textos{
  String texto [];
 // int cantTextos;
Textos(){
 // textosPantallas = new String [12];
  texto = new String [13];
CargarTextos();

}
 
void CargarTextos(){
texto[0] = "El Príncipe y el Mendigo";
texto[1] = "Créditos";
texto[2] = "La historia comienza en 1547, en la ciudad de Londres, Inglaterra,\nque estaba gobernada por Enrique VIII. La ciudad se encontraba\n en un clima de estabilidad, pero con una desigualdad muy profunda...\n en ella había dos niños, separados por mundos completamente distintos,\n uno era Tom, el hijo de una familia pobre que siempre aspiró a tener\nuna mejor vida, y el otro era Eduardo, el hijo del Rey, que era un\nniño solitario e infeliz, que solo quería tener un amigo para jugar...";
texto[3] = "Tom se encontraba merodeando por la ciudad, cuando\nse encontró con el palacio real. Sumamente curioso,\nintentó ver el cambio de guardia que acontecía,\npero lo distrajo un sonido de un niño en el patio\nreal, que, al acercarse pudo ver que era el\npríncipe real. Los guardias que estaban\natentos, vieron a Tom husmear y lo detuvieron\npara castigarlo, cuando de repente se escucha que\nalguien los para... ¡Era el mismísimo príncipe!\nLes dijo que lo dejaran pasar... y acto seguido\nlo invito a jugar con él.";
texto[4] = "Eduardo se encontraba aburrido, por lo que decidió\nir a jugar al patio solo, ya que no tenía niños\nde su edad para jugar. Mientras jugaba en el\njardín, vio como un niño era apartado por los\nguardias, por lo que les ordenó que lo dejaran\nen paz y lo dejasen entrar y acto seguido lo\ninvito a jugar con él.";
texto[5] = //"En ese momento se dieron cuenta de lo parecidos\nque eran y decidieron cambiar de vestimenta,\nhaciéndose pasar por el otro, para poder\nexperimentar cómo es su vida. Los dos\nniños se terminaron de vestir y en\nsecreto, salieron como si fueran el otro\nsin que nadie se dé cuenta. Eduardo se\nlleva consigo el Sello Real, como\nprueba de su identidad.";
texto[6] = "Eduardo salió a la calle para ir a visitar\na su supuesta familia en la parte más\nempobrecida de Londres, y una vez allí\nvivió unos días con ellos sin que nadie\nni los padres se dieran cuenta. A Eduardo\nle gustó sentir el cariño de una madre y un\nhogar, como también el poder jugar con\notros niños de la calle. A la vez se dio\ncuenta de la difícil vida que llevaban estas\npersonas, y de la crueldad e injusticia que\nsufrían día a día, prometiéndose mejorar\nsu situación cuando sea rey.";
texto[7] = "Un día, escapando del borracho padre\nde Tom, se perdió en las calles, y\n estuvo a punto de ser asaltado por unos\njóvenes bandidos, cuando Miles, un\nveterano, lo rescata y lo ayuda a volver.\nPoco después, Eduardo se entera de que\nsu padre, el rey Enrique ha muerto,\ncon dolor, tiene que decidir si quedarse\ncon su nueva familia o reclamar el\ntrono real...";
texto[8] = "Tom se queda en el palacio y pasa varios\ndías sin que nadie se dé cuenta, pero como\nno sabía nada de las costumbres reales,\nlos nobles se percataron de su conducta y\npensaron que estaba loco, por lo que Tom\ndecidió excusarse con que estaba enfermo,\npero sumamente lúcido de mente. Tom la\npasó muy bien en el palacio, ya que no\nestaba acostumbrado a comer tantas cosas\ny además tan ricas, ni a dormir calentito\nen una cama cómoda y rodeado de juguetes.";
texto[9] = "Un día, Tom se despierta con la noticia de\nque su supuesto padre, el rey Enrique,\nha muerto, y que es su deber asumir el trono.\nTom, que no se esperaba esta situación, no\nsabía qué hacer. Intentó decirles que él no\nera el verdadero Eduardo, pero nadie le creía,\npor lo que se puso a pensar qué podía hacer,\npor un lado, podía aceptar el trono,\nconvirtiéndose en el Rey de Inglaterra,\ny por otro lado podía seguir insistiendo,\nganando tiempo para que llegue el\nverdadero Eduardo.";
texto[10] = "Con dolor, pero determinación, Eduardo decide ir a reclamar su trono\njunto con la ayuda de Miles. Cuando llegan se encuentran con la\nceremonia de coronación a punto de comenzar. Tom seguía insistiendo\nen que él no era el príncipe, por lo que Eduardo se metió y les mostró\na todos el Sello Real, y junto a Tom,\nles explicó lo sucedido. Automáticamente\ntodo el mundo se da cuenta de la realidad\ny coronan a Eduardo como Rey.\nSumamente agradecido, le otorga a Miles\nel título de Conde, mientras que a Tom le\notorga el título de Guardia Real y juntos\nmejoraron el reino para todos los ciudadanos.";
texto[11] = "Eduardo, después de sentirse libre por primera vez en su vida, decide\nquedarse en la pobreza con los amigos que había hecho en su pequeña\naventura, por lo que llega al palacio junto\ncon Miles y le comunica a Tom que se\nquede con el trono, y éste, sumamente\nsorprendido por la oferta, le agradece y\nle asegura que nunca va a dejarlo de lado\ny que siempre se van a visitar en su\nantiguo hogar, como amigos.";
texto[12] = "Tom decide no esperar más y tomar el\ntrono. Los nobles lo juntan y lo declaran\nRey de Inglaterra. Tom, ahora rey,\ndecide mejorar la situación de todos los\nhabitantes empobrecidos y mejorar el\nsistema judicial para que nadie en su reino\nsufra ninguna injusticia. Eduardo por su\nparte aceptó esta decisión y se quedó con\nla familia de Tom, en una enorme casa\ncerca del palacio, para que puedan verse\nsiempre que quieran.";

}


String TextoPantalla(int pantalla){
    return texto[pantalla];
  }
}

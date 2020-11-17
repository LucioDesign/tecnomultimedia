class Proporcion {

  Proporcion() {
  }

  int propX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int propY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
}

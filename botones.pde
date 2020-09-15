boolean clickBotonOK() {
  if (mouseX > height/2) {
    return true;
  }
  return false;
}

boolean clickBotonKO() {
  if (mouseX < height) {
    return true;
  }
  return false;
}

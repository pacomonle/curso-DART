main() {
  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);
  print(resultado);

  List<int> listado = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];
  print(listado);
  // var nuevoListado = listado.where( (numero) {
  //    return numero > 4;
  // });
  // metodo where devuelve un iterable
  var nuevoListado = listado.where((n) => n > 4);
  print(nuevoListado);
  // metodo toSet() para pasar a tipo set y toList() para pasar a tipo list
  print(nuevoListado.toSet().toList());
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;

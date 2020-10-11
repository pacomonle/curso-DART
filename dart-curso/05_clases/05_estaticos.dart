class Herramientas {
  List<String> lista = ['alicate', 'destornillador'];
// se llaman sin instanciar a la clase
  static final List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador'
  ];
// al ser const solo se puede acceder a el pero modificarlo
  static const List<String> listMenu = ['grapa', 'clavo', 'tornillo'];

  static void imprimirListado() => listMenu.forEach(print);
}

main() {
  final herr = new Herramientas();
  print(herr.lista); // no se tiene acceso al static
  // acceder al listado sin tener que crear una nueva instancia -> static
  Herramientas.listado.add('Tenazas');
  print(Herramientas.listado);
//  Herramientas.listado.forEach((element) => print(element));
//  Herramientas.listado.forEach(print);
  Herramientas.imprimirListado();
}

main() {
  var a = 10;
  final double b = 10;
  const double c = 10;

  a = 20;
// final y constant son variables cuyo valor no puede cambiar
  // b = 20;
//  c = 20;

// diferencias entre final y const ->
  // final permite variar el contenido de la lista pero const no
  // final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  // const personasConst = ['Juan', 'Pedro', 'Fernando'];

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  // personasConst.add('Maria');

// Nos e puede apuntar a un nuevo espacio en memoria
  //  personasFinal = [];

  // print(personasConst);
  print(personasFinal);
}

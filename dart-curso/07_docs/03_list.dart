main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int> lista2; // null
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> nombres = ['Tony', 'Peter', 'Jhon'];

  print('Length: ${lista.length}');
  print('First: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');

  print('is empty: ${lista.isEmpty}'); // boleano
  print('is empty?: ${lista2 == null}'); // true
// convertir lista en un Map
  print('asMap:  ${lista.asMap()}');

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[4]}');

  Map nombreMapa = nombres.asMap();
  print('NombreMapa: ${nombreMapa}');
  print('NombreMapa: ${nombreMapa[1]}');

  print('indexOf: ${nombres.indexOf('Peter')}'); // 1 true , -1 false

  /*  int mayor3 = lista.indexWhere( (numero) {

     if ( numero > 3 ) {
       return true;
     } else {
       return false;
    }
   }); */
  // posicion en la lista 1º numero > 3
  int mayor3 = lista3.indexWhere((numero) => (numero > 3) ? true : false);
  print('indexWhere mayor 3: $mayor3');

// borrar elemento de una lista
  print('Remove: ${nombres.remove('Tony')}'); // devuelve boleano
  print('Remove: ${nombres}');
// lista con orden random
  lista.shuffle();
  print('Shuffle: $lista');
  print(lista.first);
// lista ordenada y ordenada al reves
  lista3.sort();
  print('Sort: $lista3');
// .toList() convertir iterable a lista
  print('Reverse: ${lista3.reversed.toList()}');
  print(lista3.last);
// recorrer lista sin modificarla
  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
  });

  print('Listado: $nombres');
// map - nueva lista al recorrer la lista antigua y tranformar el elemento
  final newList = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('newList: $newList');
}

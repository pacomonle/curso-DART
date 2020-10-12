main(List<String> args) {
  String nombre = 'Francisco';
  String apellido = 'Monleon';

  String nombreCompleto = '$nombre' ' ' '$apellido'; // Francisco Monleon

  print('String: $nombreCompleto');
  print('Length: ${nombreCompleto.length} ');
  // contain ('argumento o regex, indice donde empieza la busqueda)
  print('Contains F: ${nombreCompleto.contains('F', 0)} ');
  print('EndsWith n: ${nombreCompleto.endsWith('n')} ');
  // añadir puntos suspensivos
  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  print('Operador []: ${nombreCompleto[10]}');
  print('Operador *: ${nombreCompleto * 2}');
  // poner 10 caracteres *
  print('Operador *: ${'*' * 10}');
  // reemplazar todas las e por a
  print('ReplaceAll: ${nombreCompleto.replaceAll(new RegExp(r'e'), 'a')}');
  print('SubString: ${nombreCompleto.substring(0, 5)}...');
  print('indexOf F: ${nombreCompleto.indexOf('F')}'); // Francisco
  print('Split: ${nombreCompleto.split(' ')}'); // Francisco Monleon
  print('Split: ----${nombreCompleto.split(' ')[1]}----');

  print(
      'Capitalizar: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}

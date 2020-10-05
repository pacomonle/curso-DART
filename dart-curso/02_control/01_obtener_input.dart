import 'dart:io';

main() {
  // imprimir en terminal o cmd standar output
  stdout.write('¿Cuál es tu nombre?\n');

  // Leer información standar input
  String nombre = stdin.readLineSync(); // '10'

  stdout.writeln('Tu nombre es: $nombre');
  // stdout.writeln('Tu nombre es: ' + nombre);
}

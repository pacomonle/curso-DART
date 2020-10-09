import 'dart:io';

main() {
  // OSX y Linux
  // File file = new File( Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt' );

  // Windows
  print(Directory.current.path + '\\assets\\personas.txt');
  File file = new File(Directory.current.path + '\\assets\\personas.txt');
  print(file);

  // asincrono
  Future<String> f = file.readAsString();
  f.then((data) => print(data));
  // f.then( print );

  // sincrono
  String archivo = file.readAsStringSync();
  print(archivo);

  print('Fin del main');
}

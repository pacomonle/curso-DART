import 'clases/persona.dart';

main() {
  final persona = new Persona(edad: 40, nombre: 'Juan Carlos');
  print(persona);
  final persona2 = new Persona.persona40('María');

  // .. operador de cascada
  persona
    ..nombre = 'Fernando'
    ..edad = 33
    ..bio = 'Nació por ahí'; // privado
  print(persona);

  // actualizar con el setter
  persona.bio = 'Cambié el valor!';
  // leer con el gettter
  print(persona.bio);

  print(persona2.toString());
}

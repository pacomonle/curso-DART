main(List<String> args) {
  final persona = {
    'nombre': 'Francisco',
    'apellido': 'Monleon',
    'edad': 50,
  };

  final direccion = {'ciudad': 'Ottawa', 'pais': 'Canadá'};

  print('Persona: $persona');
  print('Length: ${persona.length}');
  // keys
  print('keys: ${persona.keys.toList()}');
  // values
  print('values: ${persona.values.toSet()}');
  // añadir elementos al map - concatenar mapas
  persona.addAll(direccion);
  print('AddAll: $persona');
  // borrar elemento del map
  persona.remove('pais');
  print('remove: $persona');

  // persona.removeWhere( (key, value) {

  //   if ( key != 'nombre' ) {
  //     return true;
  //   } else {
  //     return false;
  //   }

  // });

  persona.removeWhere((key, value) => (key == 'ciudad') ? true : false);
  print('removeWhere: $persona');

  persona.forEach((key, value) {
    print('key: $key   value: $value');
  });

  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });
  print('persona map: $nuevoMapa');
}

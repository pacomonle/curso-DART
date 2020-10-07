main() {
  String nombre = 'fernando';
  String nombre2 = capitalizar(nombre);
  // argumentos por valor
  print(nombre);
  print(nombre2);

  Map<String, String> personita = {'nombre': 'juan carlos'};
  Map<String, String> personita2 = capitalizarMapa(personita);
  // argumentos por referencia
  print(personita);
  print(personita2);
}

// argumentos por valor -> booleanos, string, numeros
String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

// argumentos por refrencia
Map<String, String> capitalizarMapa(Map<String, String> persona) {
  // hay que clonar el inicial porque el parametro va por referencia
  persona = {...persona};

  persona['nombre'] = persona['nombre'].toUpperCase();
  return persona;
}

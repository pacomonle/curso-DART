// snippet main
main(List<String> args) {
  // saludar( 'Hola', 'Fernando' );

  saludar2(veces: 10, mensaje: 'Hola', nombre: 'Francisco');
}

// argumentos obligatorios al principio, los opcionales despues y entre []
void saludar(String mensaje, [String nombre = '<insertar nombre>']) {
  print('$mensaje $nombre');
}

// los anteriores son argumentos posicionales
void saludar2({String nombre, String mensaje, int veces}) {
  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}
// los anteriores son argumentos con nombre

/**
 *   MIXINS
 * - mixins - dar las propiedades y metodos de una clase a otra
 * - similar a un extends
 * - no pueden ser instanciados
 * - no pueden tener constructores
 * 
 */

// class -> cualquier clase puede ser un mixin
mixin Logger {
// mixin - solo puede contener propiedades y metodos
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

class Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

// para heredar de un mixin se us la palabra reservada: ' with '
abstract class Astro with Logger {
  String nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String nombre;

  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main() {
  final ceres = new Asteroide('Ceres');

  print(ceres);
}

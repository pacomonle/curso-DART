class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
}

main(List<String> args) {
  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();
}

class Persona {
  String nombre;
  int edad;
// constructor
  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String direccion;
  List ordenes = [];
// super constructor -> cuando se hereda de una clase que tiene un constructor
  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
// los : ejecutar el proceso antes de ejecutar las instancia
}

main(List<String> args) {
  final pedro = new Cliente(33, 'Pedro');

  pedro.imprimirNombre();

  pedro.ordenes = ['factura1', 'factura2'];
  print(pedro.ordenes);
  pedro.direccion = 'Avenida las delicias 55';
  print(pedro.direccion);
}

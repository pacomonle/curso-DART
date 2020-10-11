class Vehiculo {
  bool encedido = false;

  void encender() {
    encedido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encedido = false;
    print('Vehículo apagado');
  }
}

// herencia
class Carro extends Vehiculo {
  int kilometraje = 50;
}

main() {
  final ford = new Carro();

  print(ford.encedido);

  ford.encender();
  ford.apagar();
  ford.apagar();

  print(ford.kilometraje);
}

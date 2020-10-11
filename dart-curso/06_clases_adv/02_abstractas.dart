/**
 * Clase abstracta
 * - clase que hace de cascaron
 * - no nos interesa que sea instanciada directamente
 * - queremos que se extienda a otras
 */

abstract class Vehiculo {
  bool encedido = false;

  void encender() {
    encedido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encedido = false;
    print('Vehículo apagado');
  }

// no es necesario definir el metodo en la class abtracta
// ya se denirira en las clases que lo hereden
  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 50;

  @override
  bool revisarMotor() {
    print('Motor OK!');
    return true;
  }
}

main() {
  final ford = new Carro();

  ford.encender();
  ford.apagar();
  if (ford.kilometraje == 50) {
    ford.revisarMotor();
  } else {
    print('Todavia no te toca la revision de motor');
  }
}

// patron singleton

class MiServicio {
// propiedad privada singleton
  static final MiServicio _singleton = new MiServicio._internal();
// constructor factory
  factory MiServicio() {
    return _singleton;
  }
// crear constructor privado
  MiServicio._internal();

// propiedades
  String url = 'https://abc';
  String key = 'ABC123';
}

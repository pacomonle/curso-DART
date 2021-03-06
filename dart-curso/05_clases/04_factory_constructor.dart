class Rectangulo {
  int base;
  int altura;
  int area;
  String tipo; // cuadrado base = altura, rectangulo base != altura

// los factory deben regresar instancias de Rectangulo
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

main(List<String> args) {
  final figura1 = new Rectangulo(10, 15);
  print(figura1);

  final figura2 = new Rectangulo(20, 20);
  print(figura2);

  final figura3 = Rectangulo.cuadrado(5);
  final figura4 = Rectangulo.rectangulo(4, 2);
  print(figura3);
  print(figura4);
}

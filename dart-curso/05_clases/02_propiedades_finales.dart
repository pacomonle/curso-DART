class Cuadrado {
  // propiedades inmutables -> no tienen setter
  final int lado;
  final int area;

  // Error - constructor
  // Cuadrado( int lado, int area ) {
  //   this.lado = lado;
  //   this.area = area;
  // }

  // Cuadrado( this.lado, this.area );

  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  // cuadrado.lado = 20; no puede ser ya que lado es un final

  print(cuadrado.area);
  print(cuadrado.lado);
}

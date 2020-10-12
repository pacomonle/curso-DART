main(List<String> args) {
  double numero = 3.1416;
  // definir un numero infinito
  double infinito = double.infinity;

  print(numero.toString());
  // sign : 1 numero > 0 , -1 numero < 0, 0 numero = 0 o NAN
  print('Firma: ${numero.sign} :: $numero');
  print('isFinite: ${numero.isFinite} :: $numero');
  print('isInFinite: ${infinito.isInfinite} :: $infinito');
  // valor absoluto
  print('abs: ${numero.abs()} :: $numero');
  // redondeo inferior
  print('ceil: ${numero.ceil()} :: $numero');
  // redondeo superior
  print('floor: ${numero.floor()} :: $numero');
  // print('ceil: ${infinito.ceil()} :: $numero');

  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');
  print('round: ${numero.round()} :: $numero');
  print('round: ${numero.roundToDouble()} :: $numero');

  print('clamp: ${numero.clamp(1, 3)} :: $numero');
}

main() {
  // int volumen = 2;
  Audio volumen = Audio.alto;

  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
    /*  default:
      print('Volumen sin especificar');
      break; */
  }
}

// las enum se definen como las funciones o las class fuera del main(){}
enum Audio { bajo, medio, alto }

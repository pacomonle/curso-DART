main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    // para lanzar un error -> throw
    if (1 == 1) {
      throw 'Auxilio!, explotó esta cosa';
    }
    // si no hay error retorna el return
    return 'Retorno del future';
  });

  // timeout.then( print );
  timeout.then((data) => print(data)).catchError((error) => print(error));

  print('Fin del main');
}

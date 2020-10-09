main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos después!');
    return 'Retorno del future';
  });

  // timeout.then( (response) => print(response) );
  timeout.then(print);

  print('Fin del main');
}

// el Futtures es similara al Promise de jasvascript
// Future.delayed(Duration(seconds: 3), (){}) como un timeout de javscript

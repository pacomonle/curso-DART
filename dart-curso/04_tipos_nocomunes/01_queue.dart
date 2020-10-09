import 'dart:collection';

// procesar datos de una lista uno despues del otro
main() {
  Queue<int> cola = new Queue();

  cola.addAll([10, 20, 30, 40, 50]);
  print(cola);
  print(cola is Queue);

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}

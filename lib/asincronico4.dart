

main() {
  print("inicio");
  int resultado;
  division(20, 4)
      .then((value) { // si devuelve un valor
        resultado=value;
        print("el resultado es $resultado");
      })
      .catchError((e) { // catcherror se ejecuta cuando hay error
        print("hay un error $e ");
        //return 0;
      })
      .timeout(Duration(seconds: 1),onTimeout:  () {
        print("ha pasado mas de 1 segundo");
        //return 0;
      })
      .whenComplete(() { // esto se ejecuta en cualquier caso.
        print("esto se ejecuta si hay o no error");
      });
  print("termino");
}

// (argumento) => valor a regresar
// funcion anonima  (argumento) { return valor }

Future<int> division(int n1,int n2) async {
  await Future.delayed(Duration(seconds: 2));
  return (n1/n2).round();
}

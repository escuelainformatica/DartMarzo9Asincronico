main()  {
  String texto="sin texto"; // 1)

  // then = cuando la tarea asincronica devuelve un valor
  // whenComplete = para cualquier caso (devuelve o no un valor)
  // onError = cuando se genera un error (no devuelve valor)
  // timeout = cuando ha pasado cierto tiempo.

  funcion1().then((resultado) {
    texto=resultado;
    print(texto);
  });
}

Future<String> funcion1() async {
  await Future.delayed(Duration(seconds: 3));
  return "se ejecuto la funcion asincronica";
}
Future<int> division(int n1,int n2) async {
  await Future.delayed(Duration(seconds: 2));
  return (n1/n2).round();
}

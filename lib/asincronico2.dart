main() {
  funcion1();
  funcion2();
  print("fin del main");
}

Future<void> funcion1() async {
  await Future.delayed(Duration(seconds: 5));
  print("esta es la funcion1");
}
Future<void> funcion2() async {
  await Future.delayed(Duration(seconds: 3));
  print("esta es la funcion2");
}

Stream<void> funcion3() async* {
  await Future.delayed(Duration(seconds: 3));
  print("esta es la funcion2");
}
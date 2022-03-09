main() {
  print("1");
  mifuncion();
  print("2");
  mifuncionasync();
  print("3");
  print("4");
}

mifuncion() {
  print("llamando a la funcion normal");
}

Future<void> mifuncionasync() async {
  print("llamado la funcion asincronica");
  await Future.delayed(Duration(seconds: 5));
  print("fin de la llamada");
}

// Future<void> void indica los datos que se van a devolver.


// async = indicar que la tarea es asincronica.
//      cuando trabajo con async se refiere Future.
// await = espera que se realice una tarea asincronica.
//      cuando trabajo con async* se refiere a Stream
// Future = me permite manejar tareas asincronicas sin generar un codigo que sea "un infierno de llamadas de regreso" (hell callback)
// Stream.
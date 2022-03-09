# Tareas asincronicas usando future.

```dart
// <tipo> es el valor que va a regresar la funcion
Future<tipo> nombrefuncion(argumentos) async {
  await codigolento();
}
```

# Tareas asincronicas usando stream.

```dart
// <tipo> es el valor que va a regresar la funcion
Stream<tipo> nombrefuncion(argumentos) async* {
  await codigolento();
}
```

# Llamar a una funcion asincronica

```dart
// llamar a una funcion asincronica que no devuelve datos
// esto crea un hilo de ejecucion nuevo.
main() {
  print("uno");
  nombrefuncion(argumentos);
  print("dos");
}

// uno
// dos
// los valore sde la funcion
```

# Llamar a una funcion asincronica de manera sincronica

* solo se puede usar await en una funcion sincronica.

```dart
// llamar a una funcion asincronica que no devuelve datos
// esto crea un hilo de ejecucion nuevo.
main() async {
  print("uno");
  await nombrefuncion(argumentos);
  print("dos");
}

// uno
// dos
// los valore sde la funcion
```

# obtener un valor de una funcion asincronica


```dart
// llamar a una funcion asincronica que no devuelve datos
// esto crea un hilo de ejecucion nuevo.
main(){
  print("uno");
  nombrefuncion(argumentos).then( (v) { 
    print(v);
    // aqui va el codigo a realizar si la funcion devuelve un valor
  } );
  print("dos");
}

// uno
// dos
// mostrar el valor que regresa la funcion.
```
* then(v) obtengo el valor retornado 
* catchError(e) se ejecuta una funcion si la funcion asincronica genera un error
* timeOut() se ejecuta una funcion, si la funcion asincronica se detiene la ejecucion por cierto tiempo
* whenComplete() se ejecuta en cualquier otro caso.
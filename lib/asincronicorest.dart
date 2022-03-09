import 'dart:convert';

import 'package:http/http.dart' as http;

main() {
  print("inicio main");
  fetchAlbum().then((value) {
    print(value);
  });
  fetchTodo().then((valores) {
    print(valores);
  });
  print("fin main");
}

Future< Map<String,dynamic> > fetchAlbum() async {
  Map<String,dynamic> respuesta={};
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')).then((value) {
    respuesta=jsonDecode(value.body);
  });
  return respuesta;
}

Future< List<dynamic > > fetchTodo() async {
  List<dynamic> respuesta=[];
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums')).then((value) {
    respuesta=jsonDecode(value.body);
  });
  return respuesta;
}
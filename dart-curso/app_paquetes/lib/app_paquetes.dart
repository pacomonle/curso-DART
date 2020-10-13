import 'dart:ffi';

// import paquetes dart
// import 'dart:convert';

// paquetes de terceros - librerias
import 'package:http/http.dart' as http;
// import paquetes propios
import 'classes/reqres_response.dart';
import 'classes/pais.dart';

// ignore: missing_return
Void getReqRes_Service() {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((res) {
    // reqResResponseFromJson(String str)
    final resReqRes = reqResResponseFromJson(res.body);
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id 3º elemento: ${resReqRes.data[2].id}');
    // print(res);
    // json - librerira convert
    /*   final body = jsonDecode(res.body);   // el resultado es un Map
  
    print("page: ${body['page']}");
    print("per_page: ${body['per_page']}");
    print("id 3º elemento: ${body['data'][2]['id']}"); */
  });
}

// Tarea:

void getPais() {
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
  http.get(url).then((res) {
    final col = paisFromJson(res.body);
    // print(col);
    print('===========================');
    print('Pais: ${col.name}');
    print('Población: ${col.population}');
    print('Fronteras:');
    col.borders.forEach((f) => print('   $f'));
    print('Idioma: ${col.languages[0].nativeName}');
    print('Lat: ${col.latlng[0]}');
    print('Lng: ${col.latlng[1]}');
    print('Moneda: ${col.currencies[0].name}');
    print('Bandera: ${col.flag}');
    print('===========================');
  }).catchError((error) => print(error));
}
/* int calculate() {
  int a = 10;
  int b = 20;

  a = 30;
  b = 40;

  return a * b;
}
 */

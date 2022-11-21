import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testepoke/requerimets.dart';
import 'package:http/http.dart' as http;
import 'capitalize.dart';

String lucas = '';

String name = '';
int id = 00;
String height = '';
String weight = '';
String sprite = '';
Color testecolor = Colors.white;
String type1 = '';
String type2 = '';
var teste;

api(String testeapi) async {
  var url = 'https://pokeapi.co/api/v2/pokemon/$testeapi';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  var data = Data.fromJson(json);

    name = capitalize("${data.name}");
    id = data.id;
    height = data.height.toString();
    weight = data.weight.toString();
    sprite = data.sprites;
    type1 = data.type1!;
    teste = _colora(type: type1);

}

Color? _colora({required String type}) {
switch (type) {
case 'Normal':
return Colors.brown[400];
case 'Fire':
return Colors.red;
case 'Water':
return Colors.blue;
case 'Grass':
return Colors.green;
case 'Electric':
return Colors.amber;
case 'Ice':
return Colors.cyanAccent[400];
case 'Fighting':
return Colors.orange;
case 'Poison':
return Colors.purple;
case 'Ground':
return Colors.orange[300];
case 'Flying':
return Colors.indigo[200];
case 'Psychic':
return Colors.pink;
case 'Bug':
return Colors.lightGreen[500];
case 'Rock':
return Colors.grey;
case 'Ghost':
return Colors.indigo[400];
case 'Dark':
return Colors.brown;
case 'Dragon':
return Colors.indigo[800];
case 'Steel':
return Colors.blueGrey;
case 'Fairy':
return Colors.pinkAccent[100];
default:
return Colors.grey;
}
}


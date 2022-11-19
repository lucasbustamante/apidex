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
Color testecolor = ;
String type1 = '';
String type2 = '';

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




operationCOlor (Color testecolor){
if(sprite == 'normal'){
  testecolor = Colors.red;
}
}
}

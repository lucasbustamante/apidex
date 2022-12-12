import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String capitalize(String value) {
  var result = value[0].toUpperCase();
  bool cap = true;
  for (int i = 1; i < value.length; i++) {
    if (value[i - 1] == " " && cap == true) {
      result = result + value[i].toUpperCase();
    } else {
      result = result + value[i];
      cap = false;
    }
  }
  return result;
}

number_treatment(String value) {
  var result = '';
  if(value.length == 1){
    result = '0.$value';
  }else if(value.length >=2){
    for(int i = 0; i < value.length; i++){
      if(value.length-1 == i){
        result = result + '.';
      }
      result = result + value[i];

    }
  }
  return result;
}

Color color (String type) {
  switch (type) {
    case 'normal':
      return Color(0xffdeaebc);
    case 'fire':
      return Colors.red;
    case 'water':
      return Colors.blue[300]!;
    case 'grass':
      return Colors.green;
    case 'electric':
      return Colors.amber[200]!;
    case 'ice':
      return Colors.cyanAccent[400]!;
    case 'fighting':
      return Colors.orange[300]!;
    case 'poison':
      return Colors.purple;
    case 'ground':
      return Colors.orange[300]!;
    case 'flying':
      return Colors.indigo[200]!;
    case 'psychic':
      return Colors.pink[400]!;
    case 'bug':
      return Colors.lightGreen[500]!;
    case 'rock':
      return Colors.grey;
    case 'ghost':
      return Colors.indigo[400]!;
    case 'dark':
      return Colors.grey[800]!;
    case 'dragon':
      return Colors.indigo[800]!;
    case 'steel':
      return Colors.blueGrey;
    case 'fairy':
      return Colors.pinkAccent[100]!;
    default:
      return Colors.grey;
  }
}

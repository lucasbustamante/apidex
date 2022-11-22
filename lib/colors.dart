import 'package:flutter/material.dart';

Color color (String type) {
  switch (type) {
    case 'normal':
      return Colors.brown[400]!;
    case 'fire':
      return Colors.red;
    case 'water':
      return Colors.blue;
    case 'grass':
      return Colors.green;
    case 'electric':
      return Colors.amber[200]!;
    case 'ice':
      return Colors.cyanAccent[400]!;
    case 'fighting':
      return Colors.orange;
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
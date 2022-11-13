import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'homepage.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
      ,
    );
  }
}

class Data{
  final String name;

  Data({required this.name});

  factory Data.fromJson (Map json){
    return Data(
    name: json['name'],);
  }

}
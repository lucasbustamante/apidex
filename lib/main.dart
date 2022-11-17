import 'package:flutter/material.dart';
import 'package:testepoke/poke_info.dart';

import 'homepage.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(),
      debugShowCheckedModeBanner: false
      ,
    );
  }
}
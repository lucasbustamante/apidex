import 'package:flutter/material.dart';
import 'package:testepoke/home_treatment.dart';

import 'mobile.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Home_Treatment(),
      debugShowCheckedModeBanner: false
      ,
    );
  }
}
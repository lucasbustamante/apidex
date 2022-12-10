import 'package:flutter/material.dart';
import 'controller/home_treatment.dart';
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
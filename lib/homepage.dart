import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController valor = TextEditingController();

  var resultado = 'oi';

api(String testeapi) async {
    var url = 'https://pokeapi.co/api/v2/pokemon/$testeapi';
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    var data = Data.fromJson(json);
    setState(() {
      resultado = "${data.namee}";
      print('lucas');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: valor,
          ),
          Center(child:
          Text('$resultado',
            style: TextStyle(fontSize: 40),)),
          //Image.network(''),
          ElevatedButton(onPressed: (){api(valor.text);}, child: Text('OK'))
        ],
      ),
    );
  }
}

class valor {
  final String? valorClasse;
  valor({this.valorClasse});
}

class Data{
  final String namee;
  final String sprint;


  Data({required this.namee, required this.sprint});

  factory Data.fromJson (Map json){
    return Data(
      namee: json['name'],
    sprint: json['sprint']);
  }

}
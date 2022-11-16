import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testepoke/poke_info.dart';
import 'package:testepoke/requerimets.dart';

import 'loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController valor = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokédex', style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.w500)),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Digite o nome do seu Pokemon',
              style: TextStyle(fontSize: 22,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
              child: TextField(
                controller: valor,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: 'Nome do Pokemon',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                  )
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
              )
            ),
              onPressed: (){
                setState(() {
                  api(valor.text);
                });
                Navigator.push(context, MaterialPageRoute(builder: (
                context) => PokeInfo()
                ));
              }, child: Text('Pesquisar',
            style: TextStyle(color: Colors.white, fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }
}

class valor {
  final String? valorClasse;
  valor({this.valorClasse});
}

var resultado = 'oi';
String teste = '';

api(String testeapi) async {
  var url = 'https://pokeapi.co/api/v2/pokemon/$testeapi';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  var data = Data.fromJson(json);

    resultado = "${data.name}";
    teste = "${data.sprites}";

}

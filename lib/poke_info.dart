import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testepoke/homepage.dart';
import 'package:testepoke/requerimets.dart';

class PokeInfo extends StatefulWidget {

  const PokeInfo({Key? key}) : super(key: key);
  @override
  State<PokeInfo> createState() => _PokeInfoState();
}
class _PokeInfoState extends State<PokeInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
      title: Text('N°      Name',style: TextStyle(
        color: Colors.white, fontSize: 20
      ),),),
      body: Column(
        children: [
          Text(resultado),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Image.network('https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png'),
          )
        ],
      ),
    );
  }
}

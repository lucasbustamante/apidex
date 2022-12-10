import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testepoke/api.dart';
import 'package:testepoke/loading.dart';
import 'package:testepoke/poke_image.dart';
import 'package:testepoke/requerimets.dart';
import 'functions.dart';
import 'not_found_page.dart';


class Awayt_Api extends StatefulWidget {

  @override
  State<Awayt_Api> createState() => _Awayt_ApiState();
}
String nomePokemon = '';
String name = '';
int id = 00;
String height = '';
String weight = '';
String sprite = '';
String type1 = '';
String type2 = '';
Color backGroundcolor = Colors.white;
int hp = 0;
int attack = 0;
int defense = 0;
int sp_attack = 0;
int sp_defense = 0;
int speed = 0;

class _Awayt_ApiState extends State<Awayt_Api> {


  api() async {
    var url = apiUrl+nomePokemon;
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    var data = Data.fromJson(json);
    setState(() {
      name = capitalize("${data.name}");
      id = data.id;
      height = data.height.toString();
      weight = data.weight.toString();
      sprite = data.sprites;
      type1 = data.type1!;
      //type2 = data.type2!;
      backGroundcolor = color(type1);
      height = number_treatment(height);
      weight = number_treatment(weight);
      hp = data.hp;
      attack = data.attack;
      defense = data.defense;
      sp_attack = data.sp_attack;
      sp_defense = data.sp_defense;
      speed = data.speed;
    });
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.done :
            if (type1== ''){
              return NotFound();
            }else{
              return PokeImage();
            }
          case ConnectionState.none :
            return Text('none');
          case ConnectionState.waiting :
            return Loading();
          case ConnectionState.active :
            return Text('active');



        }
        return PokeImage();
        },
        future: api()
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:testepoke/colors.dart';
import 'package:testepoke/requerimets.dart';

import 'capitalize.dart';


class PokeInfo extends StatefulWidget {

  final String nomePokemon;

  const PokeInfo({super.key, required this.nomePokemon});
  @override
  State<PokeInfo> createState() => _PokeInfoState();
}

class _PokeInfoState extends State<PokeInfo> {

  String name = '';
  int id = 00;
  String height = '';
  String weight = '';
  String sprite = '';
  String type1 = '';
  String type2 = '';

  api(String testeapi) async {
    var url = 'https://pokeapi.co/api/v2/pokemon/$testeapi';
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

      switch (type1) {
        case 'normal':
          testecolor = Colors.brown[400]!;
          break;
        case 'fire':
          testecolor = Colors.red;
          break;
        case 'water':
          testecolor = Colors.blue;
          break;
        case 'grass':
          testecolor = Colors.green;
          break;
        case 'electric':
          testecolor = Colors.amber.shade300;
          break;
        case 'ice':
          testecolor = Colors.cyanAccent[400]!;
          break;
        case 'fighting':
          testecolor = Colors.orange;
          break;
        case 'poison':
          testecolor = Colors.purple;
          break;
        case 'ground':
          testecolor = Colors.orange[300]!;
          break;
        case 'flying':
          testecolor = Colors.indigo[200]!;
          break;
        case 'psychic':
          testecolor = Colors.pink;
          break;
        case 'bug':
          testecolor = Colors.lightGreen[500]!;
          break;
        case 'rock':
          testecolor = Colors.grey;
          break;
        case 'ghost':
          testecolor = Colors.indigo[400]!;
          break;
        case 'dark':
          testecolor = Colors.brown;
          break;
        case 'dragon':
          testecolor = Colors.indigo[800]!;
          break;
        case 'steel':
          testecolor = Colors.blueGrey;
          break;
        case 'fairy':
          testecolor = Colors.pinkAccent[100]!;
          break;
        default:
          testecolor = Colors.grey;
      }
    });


  }
  @override
  void initState(){
    super.initState();
    api(widget.nomePokemon);

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: testecolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('#$id', style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 25),),
              const SizedBox(height: 7),
              Text('$name', style: TextStyle(fontWeight: FontWeight.w500,
              fontSize: 35),),
              const SizedBox(height: 50),
              Row(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      children: [
                        Text(
                          'Type: ',
                          style: TextStyle(fontSize: 25 ,
                          fontWeight: FontWeight.w600),
                        ),
                        Text(
                          type1,
                          style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Height: ',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600),),
                          Text('$height m',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Weigth: ',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600),),
                          Text('$weight kg',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ],
                  ),
                    ],
                  ),

              Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if(sprite == '')
                      Lottie.asset('assets/loading_red.json'),
                    if(sprite != '')
                      Image.network(sprite),
                  SizedBox(height: 60),
                  Divider(
                    height: 3,
                      thickness: 3,
                  )
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}




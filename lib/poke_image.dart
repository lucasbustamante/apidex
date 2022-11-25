import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:testepoke/api.dart';
import 'package:testepoke/poke_info.dart';
import 'package:testepoke/requerimets.dart';
import 'functions.dart';


class PokeImage extends StatefulWidget {

  final String nomePokemon;

  const PokeImage({super.key, required this.nomePokemon});
  @override
  State<PokeImage> createState() => _PokeImageState();
}
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

class _PokeImageState extends State<PokeImage> {



  api(String pokemon) async {
    var url = apiUrl+pokemon;
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


  @override
  void initState(){
    super.initState();
    api(widget.nomePokemon.toLowerCase());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text('   #$id', style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 25, color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 40,
                        color: Colors.grey[500]!)
                  ]),),
              const SizedBox(height: 7),
              Text('  $name', style: TextStyle(fontWeight: FontWeight.w500,
              fontSize: 35,color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.0, 0.0),
                  blurRadius: 40,
                  color: Colors.grey[500]!)
              ]
              ),
              ),
              const SizedBox(height: 50),
              Row(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Row(
                      children: [
                        SizedBox(height: 40),
                        Text(
                          'Type: ',
                          style: TextStyle(fontSize: 25 ,
                          fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[500]!)
                              ]),
                        ),
                        Text(
                          type1,
                          style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[500]!)
                              ]),
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
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[600]!)
                              ]),),
                          Text('$height m',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[600]!)
                              ]),),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Weigth: ',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[600]!)
                              ]),),
                          Text('$weight kg',style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 40,
                                    color: Colors.grey[600]!)
                              ]),),
                        ],
                      ),
                    ],
                  ),
                    ],
                  ),

              Center(
                child: Column(
                  children: [
                    if(sprite == '')
                      Lottie.asset('assets/loading_red.json'),
                    if(sprite != '')
                      Image.network(sprite),
                  SizedBox(height: 30),
                  Divider(
                    height: 3,
                      thickness: 3,
                  ),
                    PokeInfo(),
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



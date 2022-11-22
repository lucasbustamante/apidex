import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:testepoke/colors.dart';
import 'package:testepoke/number_treatment.dart';
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
  //String type2 = '';
  Color backGroundcolor = Colors.white;

  api(String pokemon) async {
    var url = 'https://pokeapi.co/api/v2/pokemon/$pokemon';
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




import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:testepoke/view/poke_info.dart';
import '../controller/await_api.dart';

class PokeImage extends StatefulWidget {

  @override
  State<PokeImage> createState() => _PokeImageState();
}

class _PokeImageState extends State<PokeImage> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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




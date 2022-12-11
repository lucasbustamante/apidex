import 'package:flutter/material.dart';
import 'package:testepoke/model/container_stats.dart';
import '../controller/await_api.dart';

class PokeInfo extends StatelessWidget {
  const PokeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('  Base stats:', style: TextStyle(
              fontSize: 40, color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                    offset: Offset(0.0, 0.0),
                    blurRadius: 40,
                    color: Colors.grey[600]!)
              ]
          )),
          SizedBox(
              height: 25
          ),
          Container(height: 120,
            child: Row(
              children: [

                VerticalDivider(
                  thickness: 3,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container_Stats(stat: 'HP: $hp'),
                        Container_Stats(stat: 'ATTACK: $attack'),
                      ],
                    ),
                    Row(
                      children: [
                        Container_Stats(stat: 'DEFENSE: $defense'),
                        Container_Stats(stat: 'SP. ATTACK: $sp_attack'),
                      ],
                    ),
                    Row(
                      children: [
                        Container_Stats(stat: 'SP.DEFENSE: $sp_defense'),
                        Container_Stats(stat: 'SPPED: $speed'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

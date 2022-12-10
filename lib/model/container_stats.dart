import 'package:flutter/material.dart';

class Container_Stats extends StatelessWidget {
  final String stat;

  const Container_Stats({super.key, required this.stat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 10),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(8)

      ),

        child: Center(
            child: Text('   $stat   ',style: TextStyle(

              fontSize: 15, fontWeight: FontWeight.w700,
                color: Colors.grey[600]
            ),)),

      ),
    );
  }
}

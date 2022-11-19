import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:testepoke/colors.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: testecolor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(90),
            child: Lottie.asset('assets/loading.json'),
          )),
          const Text('Carregando', style: TextStyle(color: Colors.grey, fontSize: 20),)
        ],
      ),
    );
  }
}


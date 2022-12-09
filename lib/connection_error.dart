import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Connection_error extends StatelessWidget {
  const Connection_error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/error.json'),
                  Text('Erro ao Carregar Dados',style: TextStyle(
                    fontSize: 30, color: Colors.deepOrange, fontWeight: FontWeight.w700
                  ),),
                  ElevatedButton(onPressed: (){},
                      child: Text('Recarregar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape:
                    ),
                  )
                ],
              ),

      ),
    );
  }
}

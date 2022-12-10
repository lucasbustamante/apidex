import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:testepoke/controller/home_treatment.dart';

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
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_Treatment()));
                  },
                      child: Text('Recarregar',style: TextStyle(
                        fontSize: 18
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      )
                      )
                    ),
                ],
              ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/notfound.json'),
            Text('Pokemon não encontrado!',style: TextStyle(
                fontSize: 30, color: Colors.deepOrange,
                fontWeight: FontWeight.w700
            ),),
            Text('Certifique-se de ter digitado corretamente',
              style: TextStyle(
                fontSize: 15, color: Colors.deepOrange,
                fontWeight: FontWeight.w500
            ),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Voltar',style: TextStyle(
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

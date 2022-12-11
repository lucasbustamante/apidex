import 'package:flutter/material.dart';

import '../controller/await_api.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  TextEditingController valueName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: TextField(
                textInputAction: TextInputAction.search,
                controller: valueName,
                decoration: const InputDecoration(
                  suffixStyle: TextStyle(
                    color: Colors.red
                  ),
                  suffixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.red
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.grey
                        )
                    ),
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Nome do Pokemon',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                    )
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  )
              ),
              onPressed: () {
                nomePokemon = valueName.text;
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Await_Api()
                ));
              }, child: const Text('Pesquisar',
              style: TextStyle(color: Colors.white, fontSize: 17),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  )
              ),
              onPressed: () {
                valueName.clear();
              }, child: const Text('Limpar',
              style: TextStyle(color: Colors.white, fontSize: 17),),
            ),
          ],
        )
      ),
    );
  }
}

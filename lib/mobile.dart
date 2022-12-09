import 'package:flutter/material.dart';
import 'package:testepoke/await_api.dart';
import 'package:testepoke/poke_image.dart';

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
      appBar: AppBar(
        title: const Text('Pokédex', style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w500)),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Digite o nome do seu Pokemon',
              style: TextStyle(fontSize: 22,
              ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
              child: TextField(
                controller: valueName,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: 'Nome do Pokemon',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                    )
                ),
              ),
            ),
            Column(
              children: [
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
                          builder: (context) => Awayt_Api()
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
          ],
        ),
      ),
    );
  }
}
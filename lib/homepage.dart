import 'package:flutter/material.dart';
import 'package:testepoke/poke_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  )
              ),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PokeInfo(
                        nomePokemon: valueName.text)
                  ));
              }, child: const Text('Pesquisar',
              style: TextStyle(color: Colors.white, fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }
}
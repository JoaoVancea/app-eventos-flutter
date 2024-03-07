import 'package:appevento/Screens/CustomWidgets/Card.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 35, 44),
          title: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Buscar tudo no aiFood',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(4),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              filled: true,
              fillColor: Colors.grey,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(
                255, 6, 35, 44), 
          ),
          child: ListView(children: [
            Column(
              children: [
                Row(
                  children: [
                    cardBusca(215, 200, 'assets/bienallivro.png'),
                    cardBusca(215, 200, 'assets/bienallivro.png'),
                  ],
                ),
                const Divider(),
                Row(children: [
                  //cardBusca(largura, altura, img)
                ])
              ],
            ),
          ]),
        ));
  }
}

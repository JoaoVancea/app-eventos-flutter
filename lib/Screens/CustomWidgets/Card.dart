import 'package:appevento/Screens/CustomWidgets/Style.dart';
import 'package:flutter/material.dart';
import 'package:simple_animated_button/simple_animated_button.dart';

Widget cardEventos(
    double largura, double altura, String imagem, String texto, String preco) {
  return Container(
    width: largura,
    height: altura,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //color: color,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagem,
                width: double.infinity,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                texto,
              ),
            ),
            Text(
              preco,
            )
          ],
        ),
      ),
    ),
  );
}

Widget cardBusca(double largura, double altura, String img) {
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget listTile(IconData iconLeading, String title, String subtitle) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 44, 71, 81)),
    child: ListTile(
      onTap: () {},
      leading: Icon(iconLeading, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
    ),
  );
}

import 'package:appevento/Screens/CustomWidgets/Card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 35, 44),
        leading: IconButton(
          icon: SizedBox(
            height: 200,
            width: 200, // Set the desired width here
            child: Image.asset(
              'assets/feverLogo.png',
              height: 200, // Set the desired height here
            ),
          ),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(MdiIcons.gift, color: Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(
              255, 6, 35, 44), // Change this to the desired background color
        ),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 44, 71, 81),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              MdiIcons.mapMarker,
                              color: Colors.white,
                              weight: 5,
                            ),
                          ),
                          const Text(
                            'São Paulo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.1),
                            child: Icon(
                              MdiIcons.chevronDown,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 71, 81),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            weight: 5,
                          ),
                        ),
                        const Text('Descubra ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                        const Text('shows',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(2.1),
                          child: Container(
                            width: 38,
                            height: 38,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 69, 110, 124),
                                shape: BoxShape.circle),
                            child: Icon(MdiIcons.calendarRange,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Para Você', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
            )),
          )
        ]),
      ),
    );
  }
}

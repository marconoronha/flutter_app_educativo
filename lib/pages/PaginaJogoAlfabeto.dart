import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PaginaJogoAlfabeto extends StatefulWidget {
  @override
  _PaginaJogoAlfabetoState createState() => _PaginaJogoAlfabetoState();
}

class _PaginaJogoAlfabetoState extends State<PaginaJogoAlfabeto> {

  final List<String> entries = <String>["A de Abelha", 'B de Bola', 'C de Casa', 'D de Dado', 'E de Elefante', 'F de Fada', 'G de Gato', 'H de Helicóptero', 'I de Ilha', 'J de Joaninha', 'K de Kiwi', 'L de Lua', 'M de Macaco', 'N de Navio', 'O de Ovo', 'P de Pato', 'Q de Queijo', 'R de Rato', 'S de Sapo', 'T de Tatu', 'U de Uva', 'V de Vaca', 'W de Wi-fi', 'X de Xícara', 'Y de Yoga', 'Z de Zebra'];
  final List<int> colorCodes = <int>[500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500, 200, 500];
  final List<String> images_entries = <String>["assets/abelha.jpg", "assets/bola.jpg", "assets/casa.jpg", "assets/dado.jpg", "assets/elefante.jpg", "assets/fada.jpg", "assets/gato.jpg", "assets/helicoptero.jpg", "assets/ilha.jpg", "assets/joaninha.jpg", "assets/kiwi.jpg", "assets/lua.jpg", "assets/macaco.jpg", "assets/navio.jpg", "assets/ovo.jpg", "assets/pato.jpg", "assets/queijo.jpg", "assets/rato.jpg", "assets/sapo.jpg", "assets/tatu.jpg", "assets/uva.jpg", "assets/vaca.jpg", "assets/wifi.jpg", "assets/xicara.jpg", "assets/yoga.jpg", "assets/zebra.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Letras"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(15),
            color: Colors.amber[colorCodes[index]],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('${entries[index]}'),
                Image.asset('${images_entries[index]}', width: 100, height: 100),
              ],
            ),
          );
        },
      ),
    );
  }
}
